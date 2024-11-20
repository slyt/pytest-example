
from greeting import my_name


def test_my_name():
    assert "My name is: sally" == my_name("sally")

def test_my_name_1():
    assert "My name is: bob" == my_name("bob")

def test_my_name_2():
    assert "My name is: derek" == my_name("derek")

def test_my_name_3():
    assert "My name is: joe" == my_name("joe")