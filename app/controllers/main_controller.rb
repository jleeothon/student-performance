class MainController < ApplicationController

  @@Option = Struct.new :name, :desc

  def index
  end

  def select
    @options = Student::columns.map{|c| @@Option::new c[:name], c[:desc]}
  end

  def query
    class_name = params[:column]
    @class_column = Student::columns.find{|c| c[:name] == class_name }[:desc]
    @columns = Student::columns.select do |c|
      c[:name] != class_name
    end.map do |c|
      {
        name: c[:name],
        desc: c[:desc],
        values: c[:values].map { |v| @@Option::new v[0], v[1] }
      }
    end
  end

  def result
    @class_name = Student::columns.find do |c|
      not params.keys.include? c[:name]
    end[:name]
    @query_parameters = params.select do |k, v|
      k.in? Student::column_names
    end
    dataset = Baobab::Dataset::new []
    # @tree = Baobab::DecisionTree::new dataset, @class_name
  end

private

  # Returns a list of hashes that can be fed into a dataset
  def student_list
    Student::all
  end

end
