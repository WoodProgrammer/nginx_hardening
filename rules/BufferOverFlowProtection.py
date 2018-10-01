import re
import os


class BufferOverFlowProtection:

    def __init__(self):
        self.words = ["client_body_buffer_size", "client_header_buffer_size", "client_max_body_size", "large_client_header_buffers"]


    def checkWords(self, fileName):

        points = 0

        for line in open(fileName, "r"):

            for word in self.words:
                if re.search(word, line):
                    points = points + 1


        return points
    
