require 'sinatra'
require_relative 'cat-gen'

get '/' do
    erb :index, :locals => { :nickname => build_name }
end