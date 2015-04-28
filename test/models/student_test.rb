require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    students = Student::all.map do |s|
      s.attributes.except('id', 'created_at', 'updated_at')
    end
    @dataset = Baobab::Dataset::new students
    @tree = Baobab::DecisionTree::new @dataset, 'Mjob'
  end

  test "students can be put into id3 tree" do
    # puts @tree.to_s
  end

  test "complete test 1" do
    query = {
      "sex"=>"F", "age"=>"15", "address"=>"U", "famsize"=>"LE3", "Pstatus"=>"T",
      "Medu"=>"0", "Fedu"=>"0", "Fjob"=>"teacher", "reason"=>"home",
      "guardian"=>"mother", "traveltime"=>"1", "studytime"=>"1",
      "failures"=>"1", "schoolsup"=>"yes", "famsup"=>"yes", "paid"=>"yes",
      "activities"=>"yes", "nursery"=>"yes", "higher"=>"yes", "internet"=>"yes",
      "romantic"=>"yes", "famrel"=>"3", "freetime"=>"1", "goout"=>"1",
      "Dalc"=>"4", "Walc"=>"1", "health"=>"3", "absences"=>"7", "G1"=>"17",
      "G2"=>"7", "G3"=>"18"
    }
    r = @tree.query query
    assert_equal "at_home", r
  end

end
