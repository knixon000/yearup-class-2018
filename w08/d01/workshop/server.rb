require 'sinatra'
require 'sinatra/reloader'
require 'googlebooks'

register Sinatra::Reloader

get '/' do
  @title = 'Welcome to GoogleBooks Search!'
  erb :search
end

post '/' do
  @title = 'Welcome to GoogleBooks Search!'
  books = GoogleBooks.search(params['query']).first
  @image = books.image_link
  @book = books.title
  @authors = books.authors
  @description = books.description

  erb :results
end
