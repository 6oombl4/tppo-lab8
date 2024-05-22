class SingletonMeta(type):
    def __call__(cls, *args, **kwargs):
        return super().__call__(*args, **kwargs)
