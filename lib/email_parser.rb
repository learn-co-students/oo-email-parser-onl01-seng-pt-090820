# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails 
  
  def initialize(emails)
    @emails = emails
  end 
  
  def parse 
    ret_arr = []
    if @emails.include?(", ")
      ret_arr = @emails.split(", ")
    elsif @emails.include?(" ")
      ret_arr = @emails.split(" ")
    else 
      ret_arr = @emails.split(",")
    end
    
    counter = 0
    ret_arr.each {|item|
      if item.include?(" ")
        ret_arr[counter] = item.split(" ")
      #  item = temp_arr[0]
       # ret_arr << temp_arr[1]
      end
    counter += 1
    }
    ret_arr.flatten
    ret_arr2 = []
    ret_arr.each {|item|
      unless ret_arr2.include?(item) || item.include?(" ")
        ret_arr2 << item
      end
    }
    ret_arr2.flatten
    
  end 
  
  
  
  
end