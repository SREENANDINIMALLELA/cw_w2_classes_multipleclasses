require('minitest/autorun')
require('minitest/rg')
require_relative('../bank_account.rb')
class TestBankAccount < Minitest::Test
  def setup
    @bank_account =  BankAccount.new("colin",500 , "business")
  end

  def test_account_name()
    assert_equal("colin" , @bank_account.holder_name())
  end
  def test_balance()
    assert_equal(500,@bank_account.balance() )
  end
  def test_type()
    assert_equal("business" , @bank_account.type())
  end
  def test_set_account_name()
    @bank_account.holder_name ="Niall"
    assert_equal("Niall" ,@bank_account.holder_name() )
  end
  def test_set_balance()
    @bank_account.balance=(1000)
    assert_equal(1000 ,@bank_account.balance() )
  end
  def test_set_type()
    @bank_account.type=("personal")
    assert_equal("personal",@bank_account.type() )
  end
  def test_monthly_fee()
   @bank_account.type=("personal")
    @bank_account.pay_monthly_fee()
    assert_equal(490,@bank_account.balance())
  end
  def test_monthly_fee_bussiness()
   @bank_account.type=("business")
    @bank_account.pay_monthly_fee()
    assert_equal(450,@bank_account.balance())
  end




end
