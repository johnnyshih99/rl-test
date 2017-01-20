require 'minitest/autorun'
require './one_a'

class TestQuestion < Minitest::Test
    def setup
        @arr = [1, 2, 3, 5, 8, 9, 10, 12, 14, 15, 16, 20]
    end

    def test_sum
        assert_equal 115, sum(@arr)
    end

    def test_sum_b
        assert_equal 74, sum_b(@arr)
    end

    def test_sum_c
        assert_equal 74, sum_c(@arr, false)
        assert_equal 56, sum_c(@arr, true)
    end

    def test_sum_d
        assert_equal 115, sum_d(@arr)
        assert_equal 74, sum_d(@arr, [3, 5])
        assert_equal 56, sum_d(@arr, [4])
        assert_equal 98, sum_d(@arr, [3, 4, 5])
    end
end
