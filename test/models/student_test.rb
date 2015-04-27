require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    students = Student::all.map do |s|
      s.attributes.except('id')
    end
    @dataset = Baobab::Dataset::new students
    @tree = Baobab::DecisionTree::new @dataset, 'Mjob'
  end

  test "students can be put into id3 tree" do
    puts @tree.to_s
  end

end
