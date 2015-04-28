class MainController < ApplicationController

  @@Option = Struct.new :name, :desc

  def index
  end

  def select
    @options = Student::ds_columns.map{|c| @@Option::new c[:name], c[:desc]}
  end

  def query
    class_name = params[:column]
    @class_column = Student::ds_columns.find{|c| c[:name] == class_name }[:desc]
    @columns = Student::ds_columns.select do |c|
      c[:name] != class_name
    end.map do |c|
      {
        name: c[:name],
        desc: c[:desc],
        values: c[:values].map{|v| @@Option::new v[0], v[1]}
      }
    end
  end

  def result
    @class_col = Student::ds_columns.find do |c|
      not params.keys.include? c[:name]
    end
    @query_parameters = params.select do |k, v|
      k.in? Student::ds_column_names
    end
    dataset = Baobab::Dataset::new student_list
    @tree = Baobab::DecisionTree::new dataset, @class_col[:name]
    result = @tree.query @query_parameters
    @result = Student::description_for @class_col[:name], result
  end

private

  # Returns a list of hashes that can be fed into a dataset
  def student_list
    Student::all.map do |s|
      s.attributes.except 'id', 'created_at', 'updated_at'
    end
  end

end
