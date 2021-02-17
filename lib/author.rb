require_relative 'post'
class Author
    attr_accessor :name, :posts

    @@post_count = 0
    @@posts = []
    def initialize(name)
        @name = name
        @@posts << self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        # @@posts << name
        @@posts << post
        post.author = self
        @@post_count += 1
    end
    def add_post_by_title(title)
        post = Post.new(title)
        @@posts << post
        post.author = self
        @@post_count += 1
    end

    # def post_count
    #     @@post_count
    #     self.all.each do |post|
    #         post.length
    #     end
    # end

    def self.post_count
        Post.all.count
    end
end