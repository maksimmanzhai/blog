#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:blog2.db"

class Content < ActiveRecord::Base
	validates :username, presence: true, length: {minimum: 3}
	validates :message, presence: true, length: {maximum: 140}
end

get '/' do
	@contents = Content.order('created_at DESC')
	erb :index
end

get '/new' do
	@c = Content.new
	erb :new
end

post '/new' do
	@c = Content.new params[:content]
	if @c.save
		erb 'Your post added'
	else
		@error = @c.errors.full_messages.first
		erb :new
	end
end