class EmailAddressParser
  attr_accessor :email_addresses
  
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
 
  def parse 
    email_addresses.split.collect do |address|
      address.split(',') 
    end
    .flatten.uniq 
  end 
  
end
