
require_relative 'author'

class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.author
        @author
    end

    def self.all
        @@all
    end

    def author_name
        if @author == nil
            return nil
        else
            @author.name
        end
    end

end