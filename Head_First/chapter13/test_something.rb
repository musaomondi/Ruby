require 'minitest/autorun' #load minitest
class TestSomething < Minitest::Test

  def test_true_assertion #First test method
    assert(true) #this will pass
  end
  def test_false_assertion
    assert(false)
  end
end
