import unittest
from app.app import fibonacci


class TestApp(unittest.TestCase):

    def test_fibonacci(self):
        reader = fibonacci()
        self.assertEqual(next(reader), 0), "Should be 0"
        self.assertEqual(next(reader), 1), "Should be 1"
        self.assertEqual(next(reader), 1), "Should be 1"
        self.assertEqual(next(reader), 2), "Should be 2"
        self.assertEqual(next(reader), 3), "Should be 3"
        self.assertEqual(next(reader), 5), "Should be 5"


if __name__ == '__main__':
    unittest.main()
