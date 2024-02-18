require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it 'assigns @articles and renders the index template' do
      article = FactoryBot.create(:article)
      get :index
      expect(assigns(:articles)).to eq([article])
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #new' do
    it 'assigns a new article and renders the new template' do
      get :new
      expect(assigns(:article)).to be_a_new(Article)
      expect(response).to render_template(:new)
    end
  end
end
