# tag: cpp
# mode: run


cdef extern from *:
    """
    enum class Foo {
        a = 1,
        b = 2
    };
    """
    cdef enumclass Foo:
        a
        b


cdef Foo x, y
x = Foo.a
y = Foo.b


def compare_enums():
    """
    >>> compare_enums()
    (True, True)
    """
    return x == Foo.a, y == Foo.b
