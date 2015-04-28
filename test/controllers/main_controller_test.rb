require 'test_helper'

class MainControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "result renders correct description" do
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
    get :result, query
    assert_equal assigns(:result), "At home"
  end

end
