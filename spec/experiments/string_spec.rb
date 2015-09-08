require 'spec_helper'

describe String do
  describe '#<<' do
    it 'appends a character' do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end

    RSpec.configure do |config|
      config.fixture_path = "#{::Rails.root}/spec/fixtures"
      config.use_transactional_fixture = use_transactional_fixture
      config.order = "random"

      config.include FactoryGirl::Syntax::Methods

      config.before(:suite) do
        FactoryGirl.reload
      end
    end

  end
end