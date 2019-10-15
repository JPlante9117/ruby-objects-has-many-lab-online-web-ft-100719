class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name        #gives the author a name
  end
  
  def posts 
    Post.all.select { |post| post.author == self }  #selecting all posts by this author from the total post list
  end
  
  def add_post(given_post)    #takes a given post, associates it with the author, and adds it to the array of posts
    given_post.author = self
  end
  
  def add_post_by_title(title)  #takes a given post name, intantiates a new post with that name, and then runs the add_post method
    new_post = Post.new(title)
    add_post(new_post)
  end
  
  def self.post_count           #references @@all from the Post class which has ALL posts in it.
    Post.all.length
  end
  
end