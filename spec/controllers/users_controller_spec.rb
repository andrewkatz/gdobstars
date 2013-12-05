require 'spec_helper'

describe UsersController do

  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { FactoryGirl.attributes_for(:user) }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UsersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  before do
    @user = FactoryGirl.create :user
    sign_in @user
  end

  describe "GET index" do
    it "assigns all users as @users" do
      user = User.create! valid_attributes
      user.increment_stars!
      get :index, { :format =>"json" }, valid_session
      assigns(:users).should eq([@user, user])
    end
  end

  describe "GET show" do
    it "assigns the requested user as @user" do
      user = User.create! valid_attributes
      get :show, { :id => user.to_param, :format => "json" }, valid_session
      assigns(:user).should eq(user)
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user" do
        user = User.create! valid_attributes
        # Assuming there are no other users in the database, this
        # specifies that the User created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        User.any_instance.expects(:update).with({ "stars" => 0 })
        put :update, { :id => user.to_param, :user => { "stars" => 0 }, :format => "json"}, valid_session
      end

      it "assigns the requested user as @user" do
        user = User.create! valid_attributes
        put :update, { :id => user.to_param, :user => valid_attributes, :format => "json" }, valid_session
        assigns(:user).should eq(user)
      end
    end

    describe "with invalid params" do
      it "assigns the user as @user" do
        user = User.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        User.any_instance.stubs(:save).returns(false)
        put :update, { :id => user.to_param, :user => { "email" => "blah" }, :format => "json" }, valid_session
        assigns(:user).should eq(user)
      end
    end
  end
end
