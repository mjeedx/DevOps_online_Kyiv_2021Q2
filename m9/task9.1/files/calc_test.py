from calculator import Calculator
import unittest

calc = Calculator()

class CalcTest(unittest.TestCase):

    def test_add(self):
        output = calc.add(1,2)
        self.assertEqual(output, 2)

    def test_substract(self):
        output = calc.subtract(5,4)
        self.assertEqual(output, 1)

    def test_multiply(self):
        output = calc.multiply(5,8)
        self.assertEqual(output, 40)

    def test_multiply_to_one(self):
        digit = 13
        output = calc.multiply(digit, 1)
        self.assertEqual(output, digit)

    def test_divide(self):
        output = calc.divide(33,3)
        self.assertEqual(output, 11)


if __name__ == "__main__":
    unittest.main()