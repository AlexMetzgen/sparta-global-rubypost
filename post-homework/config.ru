require "sinatra"
require "sinatra/reloader" if development?
require_relative "controllers/posts_controllers.rb"

run PostController
