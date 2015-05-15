require 'test_helper'

class ElectivesControllerTest < ActionController::TestCase
  setup do
    @elective = electives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:electives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elective" do
    assert_difference('Elective.count') do
      post :create, elective: { course_id: @elective.course_id, description: @elective.description, name: @elective.name, students: @elective.students, teacher: @elective.teacher, unit_1: @elective.unit_1, unit_2: @elective.unit_2, unit_3: @elective.unit_3, unit_4: @elective.unit_4, unit_5: @elective.unit_5 }
    end

    assert_redirected_to elective_path(assigns(:elective))
  end

  test "should show elective" do
    get :show, id: @elective
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elective
    assert_response :success
  end

  test "should update elective" do
    patch :update, id: @elective, elective: { course_id: @elective.course_id, description: @elective.description, name: @elective.name, students: @elective.students, teacher: @elective.teacher, unit_1: @elective.unit_1, unit_2: @elective.unit_2, unit_3: @elective.unit_3, unit_4: @elective.unit_4, unit_5: @elective.unit_5 }
    assert_redirected_to elective_path(assigns(:elective))
  end

  test "should destroy elective" do
    assert_difference('Elective.count', -1) do
      delete :destroy, id: @elective
    end

    assert_redirected_to electives_path
  end
end
