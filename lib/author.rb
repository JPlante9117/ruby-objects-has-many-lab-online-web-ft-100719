class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name        #gives the author a name
    @posts = []         #
  end
  
  def posts 
    Post.all.select { |post| post.author == self }  #selecting all posts by this author from the total post list
  end
  
  def add_post(given_post)                          #
    @posts << given_post
    given_post.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end
  
  def self.post_count
    Post.all.length
  end
  
end