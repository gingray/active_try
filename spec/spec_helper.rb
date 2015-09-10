$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'active_try'
Bundler.require(:development)
Dir[File.expand_path('../models/**', __FILE__)].each { |f| require f }

ActiveRecord::Base.establish_connection(:adapter => "sqlite3",
                                       :database => File.dirname(__FILE__) + "/active_try.sqlite3")

load File.expand_path('../schema.rb', __FILE__)

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
  begin
    DatabaseCleaner.start
    FactoryGirl.lint
  ensure
    DatabaseCleaner.clean
  end
end

Dir[File.expand_path('../factories/**', __FILE__)].each { |f| require f }

end
