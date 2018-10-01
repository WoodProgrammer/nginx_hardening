import unittest
from BufferOverFlowProtection import BufferOverFlowProtection


class TestBufferOverFlowProtection(unittest.TestCase):

    def test_word_count(self):
        obj = BufferOverFlowProtection()
        self.assertEqual(4, obj.bfWords("test_file.conf"))
