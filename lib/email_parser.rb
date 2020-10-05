class EmailAddressParser 
  attr_accessor :addresses_given
  def initialize(addresses_given)
    @addresses_given = addresses_given.split(/, | /)  
  end
  def parse 
    @addresses_given.uniq 
  end
end
    
