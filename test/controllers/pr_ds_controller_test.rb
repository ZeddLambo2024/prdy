require 'test_helper'

class PrDsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prd = prds(:one)
  end

  test "should get index" do
    get prds_url
    assert_response :success
  end

  test "should get new" do
    get new_prd_url
    assert_response :success
  end

  test "should create prd" do
    assert_difference('Prd.count') do
      post prds_url, params: { prd: { assumptions: @prd.assumptions, backgroundStrategicFit: @prd.backgroundStrategicFit, dateExpectedStartWork: @prd.dateExpectedStartWork, designerOwner: @prd.designerOwner, developerOwner: @prd.developerOwner, documentOwner: @prd.documentOwner, documentStatus: @prd.documentStatus, goals: @prd.goals, notDoing: @prd.notDoing, qaOwner: @prd.qaOwner, questions: @prd.questions, requirements: @prd.requirements, targetReleaseVersion: @prd.targetReleaseVersion, title: @prd.title, userInteractionNotes: @prd.userInteractionNotes } }
    end

    assert_redirected_to prd_url(Prd.last)
  end

  test "should show prd" do
    get prd_url(@prd)
    assert_response :success
  end

  test "should get edit" do
    get edit_prd_url(@prd)
    assert_response :success
  end

  test "should update prd" do
    patch prd_url(@prd), params: { prd: { assumptions: @prd.assumptions, backgroundStrategicFit: @prd.backgroundStrategicFit, dateExpectedStartWork: @prd.dateExpectedStartWork, designerOwner: @prd.designerOwner, developerOwner: @prd.developerOwner, documentOwner: @prd.documentOwner, documentStatus: @prd.documentStatus, goals: @prd.goals, notDoing: @prd.notDoing, qaOwner: @prd.qaOwner, questions: @prd.questions, requirements: @prd.requirements, targetReleaseVersion: @prd.targetReleaseVersion, title: @prd.title, userInteractionNotes: @prd.userInteractionNotes } }
    assert_redirected_to prd_url(@prd)
  end

  test "should destroy prd" do
    assert_difference('Prd.count', -1) do
      delete prd_url(@prd)
    end

    assert_redirected_to prds_url
  end
end
