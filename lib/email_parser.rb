class EmailAddressParser
  attr_accessor :emails

  def initialize(string)
    @string = string
    @emails = []
  end

  def parse
    if @string.include?(", ")
      first_split = @string.split(", ") # => ["email", "email email"]
      second_split = []
      first_split.each do |string|
        arr = string.split(" ")
        second_split = second_split + arr # combines the arr strings with the second split array
      end
      return second_split.uniq
    else @string.include?(" ")
      return @string.split(" ")
    end
  end
end




# Build a class EmailAddressParser that accepts a string of unformatted emails.
# The parse method on the class should separate them into unique email addresses.
# The delimiters to support are commas (',') or whitespace (' ').
