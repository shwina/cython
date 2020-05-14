# mode: compile
# distutils: language=c++

from enum import IntEnum, auto

cdef extern from *:
    """
    #include <iostream>

    enum class Spam {
        a = true,
        b = false
    };

    void print_spam(Spam x) {
        if (x == Spam::a)
            std::cout << "a" << std::endl;
        else
            std::cout << "b" << std::endl;
    }
    """
    cdef enumclass Spam:
        a
        b

    void print_spam(Spam x)


class MyEnum(IntEnum):
    a = Spam.a
    b = Spam.b

print_spam(MyEnum.a)
print_spam(MyEnum.b)
