# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :email_addresses
    
    def initialize(unformatted_emails)
        self.email_addresses = unformatted_emails
    end

    def removed_commas
        self.email_addresses.gsub(",","")
    end

    def parse
        removed_commas.split(" ").uniq
    end

    # Alternative with RegEx
    # def parse
    #   self.email_addresses.split(/, | /).uniq
    # end

end