# mode: compile
# distutils: language=c++

cdef extern from * namespace "Blah":
    """
    #include <iostream>

    namespace Blah {
    enum class Spam : bool {
        a = true,
        b = false
    };

    void print_spam(Spam x) {
        if (x == Spam::a)
            std::cout << "a" << std::endl;
        else
            std::cout << "b" << std::endl;
    }
    }

    """
    cpdef enumclass Spam:
        a
        b

    void print_spam(Spam)

def py_print_spam(Spam x):
    print_spam(x)

py_print_spam(Spam.a)
py_print_spam(Spam.b)
