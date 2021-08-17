import unittest

import rotate_array

class TestRotateArray(unittest.TestCase):
    def test_with_three_rotations(self):
        self.assertEqual(rotate_array.rotate([1, 2, 3, 4, 5, 6, 7], 3), [5, 6, 7, 1, 2, 3, 4])

    def test_with_two_rotations(self):
        self.assertEqual(rotate_array.rotate([-1, -100, 3, 99], 2), [3, 99, -1, -100])

    def test_with_as_single_element(self):
        self.assertEqual(rotate_array.rotate([1], 1), [1])


if __name__ == '__main__':
    unittest.main()