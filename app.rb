#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:blog.db"

get '/' do
	erb :posts
end

get '/newpost' do
  erb :newpost
end