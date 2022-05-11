#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' #чтобы не перезапускать sinattra

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"
end

get '/About' do
  erb :about
end

get '/Visit' do
  erb :visit
end

get '/contacts' do
  erb :contacts
end
