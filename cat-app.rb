require 'sinatra'
require_relative 'cat-gen'

get '/' do
    "Cat nickname: %s" % [build_name]
end