require 'minitest/autorun'

# solution here
class TrueClass
	def true?
		if block_given?
			yield
		else
			true
		end
	end

	def false?
		false
	end
end

class FalseClass
	def true?
		false
	end
end
# end of solution

# Do not modify. task is to make all tests pass without modifying the tests
class TestQuestion < Minitest::Test
	def test_if_true_is_true
		assert (6 % 3 == 0).true? { 4 }.eql?(4) 
	end

	def test_if_true_is_true_without_block
		assert (6 % 3 == 0).true?.eql?(true)
	end

	def test_if_true_is_false
		refute (6 % 4 == 0).true? { 4 }.eql?(4)
	end

	def test_if_true_is_false_without_block
		refute (6 % 4 == 0).true?.eql?(true)
	end

	def test_if_false_is_true
		assert (6 % 3 == 0).false? { 4 }.eql?(false)
	end

	def test_if_false_is_false
		refute (6 % 3 == 0).false? { 4 }.eql?(4)
	end

	def test_if_false_is_true_without_block
		assert (6 % 3 == 0).false?.eql?(false)
	end

	def test_if_false_is_false_without_block
		refute (6 % 3 == 0).false?.eql?(true)
	end
end
