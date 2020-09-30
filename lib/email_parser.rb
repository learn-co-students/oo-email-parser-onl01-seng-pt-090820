# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  @@all = []
  
  attr_accessor :addresses
  
  def initialize(input)
    @addresses = input
  end
  
  def parse
    parsed = self.addresses
    parsed = parsed.gsub(/,/, '')
    parsed.split(" ").uniq
  end
  
end