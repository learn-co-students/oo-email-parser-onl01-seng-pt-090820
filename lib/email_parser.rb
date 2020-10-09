# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :mail

  def initialize(addresses)
    @mail = addresses
  end

  def parse
    mail.delete(",").split.uniq
  end
end
