class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @posts = []
    @name = name

  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1

  end

  def add_post_by_title(post_name)
    new_post = Post.new(post_name)
    new_post.author = self
    @posts << new_post
    @@post_count +=1
    new_post

  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end

  

end
