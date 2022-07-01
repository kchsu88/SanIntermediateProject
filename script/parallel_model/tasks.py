class BaseTask():
    def __init__(self, func):
        self.func = func

    def execute(self):
        return self.func()

class BaseTaskEx(BaseTask):
    def __init__(self, func, *args, **argd):
        BaseTask.__init__(self, func)
        self.args = args
        self.argd = argd

    def execute(self):
        return self.func(*self.args, **self.argd)