# creates a class that inherits form sinarta
class PostController < Sinatra::Base

  # has 3 hashes/objects inside an array
  # hashes are objects in ruby
  # the array is also a global vairable
  $posts =[{
    id:0,
    email: "example1@hotmail.com",
    firstname:"bobby",
    lastname:"joe",
    age:24
  },
  {
    id:1,
    email: "example2@hotmail.com",
    firstname:"henry",
    lastname:"black",
    age:34
  },
  {
    id:2,
    email: "example3@hotmail.com",
    firstname:"james",
    lastname:"bond",
    age:40
  }
]


# sets root as the parent-directory of the current file
set :root, File.join(File.dirname(__FILE__), '..')
# sets the view directory correctly
set :views, Proc.new { File.join(root, "views") }


configure :development do
  register Sinatra::Reloader
end


# index
get "/" do
  # creates an instance vairable to store username
  @title="Users names"
  # creates a instance of the global variable array which has 3 hashes/objects in it
  @posts=$posts
  # is the path to the index.erb file
  erb :"posts/index"
end

# new
get"/new"do
"SHOW: this is the new form"
end

# show
get"/:id" do
  # gets the from the webpage link bar and converts it to a int and stores it
  id=params[:id].to_i
  # assigns the post variable the properties from the array based on the index which is the id
  @post = $posts[id]
  # is the path to the show.erb file
  erb  :"posts/show"

end

# create
post"/"do
"Show this is creating"
end

# edit
get"/:id/edit"do
"this is editing"
end

end
