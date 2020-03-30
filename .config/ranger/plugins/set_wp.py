import os
from ranger.api.commands import *
from ranger.core.loader import CommandLoader

class compress(Command):
    def execute(self):
        cwd = self.fm.thisdir
        marked_files = cwd.get_selection()
        return cwd
