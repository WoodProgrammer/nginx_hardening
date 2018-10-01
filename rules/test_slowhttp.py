import unittest
from SlowHttpDosAttackProtection import SlowHttpDosAttackProtection


class TestSlowHttpDosAttackProtection(unittest.TestCase):

    def test_word_count(self):
        obj = SlowHttpDosAttackProtection()
        self.assertEqual(5, obj.sHttpWords("test_file.conf"))
