#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:blog.db"

class User < ActiveRecord::Base 
	validates :name, presence: true, length: { minimum: 3 }
end

class Message < ActiveRecord::Base 
	validates :text, presence: true, length: { maximum: 140 }
end

get '/' do
	erb :posts
end

get '/newpost' do
  erb :newpost
end