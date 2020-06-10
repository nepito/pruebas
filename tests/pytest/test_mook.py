from say_hello import say_hello
from expect_equal import expect_equal

def test_mook():
    expect_equal(say_hello(), "Hola")
