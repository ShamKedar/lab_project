# test_hello.py
from hello import add

def test_add_positive():
    # Test adding two positive numbers
    assert add(2, 3) == 5

def test_add_negative():
    # Test adding negative numbers (optional second test case)
    assert add(-1, -1) == -2

print("Pytest test cases loaded successfully!")