require "sinatra"
require "sinatra/activerecord"
require "./models"
require "faker"

set :database, "sqlite3:test.sqlite3"

get '/' do
	my_name = Faker::HarryPotter.character
	User.create(email: " #{my_name.tr(' ', '')}@#{Faker::HarryPotter.location.gsub(/[^0-9A-Za-z]/, '')}.edu", name: my_name, pic: Faker::Avatar.image, birthday: Faker::Date.backward(36500))
	@users = User.all
	erb :index
end

get '/user' do
	@user_last = User.last
	erb :users
end