# tag: cpp

"""
>>> Cheese.cheddar == 1, Cheese.camembert == 2
(True, True)

>>> list(Cheese) == [1, 2]
True

>> cheddar
Traceback (most recent call last):
NameError: ...name 'cheddar' is not defined
"""

cpdef enum Cheese:
    cheddar = 1
    camembert = 2

def test_as_variable_from_cython():
    """
    >>> test_as_variable_from_cython()
    """
    list(Cheese)
