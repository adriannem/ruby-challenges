class Blog
    
  
    def set_title=(title)
        @title = title
    end
    
    def get_title
        return @title
    end
    
    def set_content=(content)
        @content = content
    end
    
    def get_content
        return @content
    end
    
    def set_time=(time)
        @time = Time.now
    end
    
    def get_time
        return @time
    end
    
end


class Page < Blog
    
      @@total_pages = 0
    
    def initialize
        
        @@total_pages += 1
    end
    
    def Page.current_count
        puts "There are currently #{@@total_pages} instances of my Page class"
        
    end
    
    
    def set_heading=(page_heading)
        @heading = page_heading
    end
    
    def get_heading
        return @heading
    end
end


class Post < Blog
    
    @@total_posts = 0
    
    def initialize
        
       
        @@total_posts += 1
    end
    
    def Post.current_count
        puts "There are currently #{@@total_posts} instances of my Post class"
    end
    
    
    
    
    def set_date=(post_date)
        @date = post_date
    end
    
    def get_date
        return @date
    end
    
    def set_author=(post_author)
        @author = post_author
    end
    
    def get_author
        return @author
    end
    
    def set_comment=(post_comment)
        @comment = post_comment
    end
    
    def get_comment
        return @comment
    end
    
end


new_page = Page.new
new_page.set_title = "My Brand-New Website."
page_title = new_page.get_title
new_page.set_heading = "All About Me"
page_heading = new_page.get_heading
new_page.set_content = "Welcome to my new website.  I am so glad to have you as a visitor."
page_content = new_page.get_content


new_post = Post.new
new_post.set_title = "My very first blog post."
post_title = new_post.get_title
new_post.set_content = "I love writing blog posts.  Writing is a lot of fun."
post_content = new_post.get_content
new_post.set_date = "March 2, 2015"
post_date = new_post.get_date
new_post.set_author = "Adrianne Miller"
post_author = new_post.get_author
new_post.set_comment = "This is a really cool blog."
post_comment = new_post.get_comment


puts "\nPage Title: #{page_title}\n
Page Heading: #{page_heading}\n
Page Content: #{page_content}\n
Time: #{Time.now}\n"


puts "\nBlog Title: #{post_title}\n
Blog Content: #{post_content}\n
Blog Date: #{post_date}\n
Blog Author: #{post_author}\n
Blog Comment: #{post_comment}\n
Time: #{Time.now}\n"

puts Page.current_count
puts Page.inspect
puts new_page.inspect


puts Post.current_count
puts Post.inspect
puts new_post.inspect




