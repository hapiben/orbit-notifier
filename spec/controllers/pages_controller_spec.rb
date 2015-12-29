require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'routing' do
    it { expect(get: '/').to route_to('pages#home') }
  end
end