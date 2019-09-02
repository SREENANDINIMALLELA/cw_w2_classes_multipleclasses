
class BankAccount
  # attr_reader :type ,:balance,:holder_name
  # attr_writer :type , :balance,:holder_name

attr_accessor :holder_name ,:type ,:balance
#attr_accessor will make getters and setters
  def initialize(holder_name , balance , type)
    @holder_name =holder_name
    @balance = balance
    @type = type
  end
  # def holder_name()
  #   return  @holder_name
  # end
  # def balance()
  #   return  @balance
  # end
  # def type()
  #   return @type
  # end
  # def set_holder_name(name)
  #   @holder_name =name
  # end
  # def set_balance(balance)
  #   @balance =balance
  # end
  # def set_type(type)
  #   @type =type
  # end
  def pay_monthly_fee()
  # #   if (@type == "personal")
  # #   @balance -=10
  # # else(@type == "business")
  # #   @balance -=50
  # # end
  #@===========1 more way
  # @balance -= 10 if @type == "personal"
  # @balance -= 50 if @type == "business"
  #==============2 way
  charges = {
    'business' => 50,
    'personal' => 10
  }
  @balance -= charges[@type]
end
end
