require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'routing' do
    it { expect(get: '/').to route_to('pages#home') }
  end

  describe 'GET #home' do
    it 'renders home template' do
      get :home
      expect(response).to render_template :home
    end
  end
end