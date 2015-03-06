class Page

@@page_count = 0

def initialize(title, heading, content)
@title = title
@heading = heading
@content = content
@@page_count += 1
end

def self.number_of_instances
return @@page_count
end


end

new_page = Page.new("My New Web Page", "A New Beginning", 

"Welcome to my blog. I'm so happy that you came to visit!")



class Post
@@post_count = 0

def initialize(title, content, author, date, time, comment)
@title = title
@content = content
@author = author
@date = date
@time = Time.now
@comment = comment
@@post_count += 1
end

def self.number_of_instances
return @@post_count
end



end

new_post = Post.new("My very first blog post.", "I love writing 

blog posts.  Writing is a lot of fun.", "Adrianne Miller", 

"March 2, 2015", "time", "This is a really cool blog.\n")

puts "Number of Page instances: #{Page.number_of_instances}"

puts "Number of Post instances: #{Post.number_of_instances}"


puts Page.inspect
puts new_page.inspect


puts Post.inspect
puts new_post.inspect


