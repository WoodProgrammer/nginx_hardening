from wordChecker import wordChecker

class SlowHttpDosAttackProtection:

    def __init__(self):
        words = ["client_body_timeout", "client_header_timeout", "keepalive_timeout", "send_timeout"]
        self.wordChecker = wordChecker(words=words)

    def sHttpWords(self, fileName):

        return self.wordChecker.checkWords(fileName)
