require "test_helper"

class TestDatabasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_database = test_databases(:one)
  end

  test "should get index" do
    get test_databases_url, as: :json
    assert_response :success
  end

  test "should create test_database" do
    assert_difference("TestDatabase.count") do
      post test_databases_url, params: { test_database: { test: @test_database.test } }, as: :json
    end

    assert_response :created
  end

  test "should show test_database" do
    get test_database_url(@test_database), as: :json
    assert_response :success
  end

  test "should update test_database" do
    patch test_database_url(@test_database), params: { test_database: { test: @test_database.test } }, as: :json
    assert_response :success
  end

  test "should destroy test_database" do
    assert_difference("TestDatabase.count", -1) do
      delete test_database_url(@test_database), as: :json
    end

    assert_response :no_content
  end
end
