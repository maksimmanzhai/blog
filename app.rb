#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :posts
end

get '/newpost' do
  erb :newpost
end