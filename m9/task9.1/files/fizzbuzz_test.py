from fizzbuzz import fzbz
import unittest


class TestFizzBuzz(unittest.TestCase):
    def test_fizz(self):
        num = 6
        result = fzbz(num)
        self.assertEqual(result, 'Fizz')

    def test_buzz(self):
        num = 10
        result = fzbz(num)
        self.assertEqual(result, 'BOOOzz')

    def test_fizzbuzz(self):
        num = 15
        result = fzbz(num)
        self.assertEqual(result, 'FizzBuzz')


if __name__ == "__main__":
    unittest.main()
