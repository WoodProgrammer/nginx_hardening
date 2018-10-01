import re
import os


class wordChecker:
    def __init__(self, words):
        self.words = words


    def checkWords(self, fileName):

        points = 0

        for line in open(fileName, "r"):

            for word in self.words:
                if re.search(word, line):
                    points = points + 1

        return points
