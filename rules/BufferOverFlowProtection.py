from wordChecker import wordChecker

class BufferOverFlowProtection:

    def __init__(self):
        words = ["client_body_buffer_size", "client_header_buffer_size", "client_max_body_size", "large_client_header_buffers"]
        self.wordChecker = wordChecker(words=words)

    def bfWords(self, fileName):

        return self.wordChecker.checkWords(fileName)
