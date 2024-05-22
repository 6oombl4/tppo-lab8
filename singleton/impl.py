from functools import cache


class SingletonMeta(type):
    @cache
    def __call__(cls, *args, **kwargs):
        return super().__call__(*args, **kwargs)
