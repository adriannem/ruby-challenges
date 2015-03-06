def determine_current_hour
    current_time = Time.new                                              
    current_hour = current_time.hour
end

def your_name
    puts "What's your name?"
    your_name = gets.chomp
end

def greeting  

    current_hour = determine_current_hour
    name = your_name
                                        
if(current_hour >3 && current_hour < 12)                           
    time = "morning"                                               
elsif (current_hour >12 && current_hour < 18)                    
    time = "afternoon"                                             
elsif (current_hour > 18 || current_hour <2)                                

      
    time = "evening"                                                        

          
end  
    
    puts "Good #{time}, #{name.capitalize}!"                           
end

 greeting  