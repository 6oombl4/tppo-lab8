from singleton import SingletonMeta


def test_singleton_without():
    class Test(metaclass=SingletonMeta):
        pass

    assert id(Test()) == id(Test())


def test_singleton_with_different_args():
    class Test(metaclass=SingletonMeta):
        def __init__(self, val):
            self.val = val

    assert id(Test(1)) != id(Test(2))


def test_singleton_with_same_args():
    class Test(metaclass=SingletonMeta):
        def __init__(self, val):
            self.val = val

    assert id(Test(1)) == id(Test(1))
