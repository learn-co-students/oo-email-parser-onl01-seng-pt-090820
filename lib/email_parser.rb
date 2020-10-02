# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser 
attr_accessor = :csv_emails
#set csv_emails = instance variable @cvs_emails

def initialize(csv_emails)
    # passes the arguement csv_emails = instance variable @cvs_emails
    @csv_emails = csv_emails
end

def parse 
    #when parse is invoked, splits the emails with a (',')
   @csv_emails.split.collect do |email|
      email.split(',')
    end
    .flatten.uniq
    #removes nested array occurences and removes duplicate
  end 

# ```ruby
# email_addresses = "john@doe.com, person@somewhere.org"
# parser = EmailAddressParser.new(email_addresses)

# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]
# ```

end