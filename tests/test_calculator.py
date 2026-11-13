from src.calculator import add

def test_add_two_numbers():
    # 2と3を渡したら5が返ってくることを期待する
    assert add(2, 3) == 5