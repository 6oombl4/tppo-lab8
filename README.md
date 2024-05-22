# Python Implementation of Singleton pattern

Be aware that singleton is aware of constructor arguments :)

## Usage
```python
from singleton import SingletonMeta


class TargetClass(metaclass=SingletonMeta):
    ...
```