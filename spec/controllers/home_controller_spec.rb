require 'spec_helper'

describe HomeController do
  context 'index' do
    it 'should get' do
      get :index
    end
  end
end
