def maximo_encadenado(a: float, b: float, c: float) -> float:
    """Toma 3 números y devuelve el máximo.
    Restricciones:
        - Utilizar comparaciones encadenadas.
        - Utilizar UNICAMENTE dos IFs
        - No utilizar ELSE
        - No utilizar AND, OR o NOT
    Referencia: https://docs.python.org/3/reference/expressions.html#comparisons # noqa: E501
    """
    if a > b > c:
        return a
    if b > c:
        return b
    return c
    assert maximo_encadenado(1, 10, 5) == 10
    assert maximo_encadenado(5, 10, 1) == 10
    assert maximo_encadenado(5, 10, 5) == 10

    assert maximo_encadenado(4, 9, 18) == 18
    assert maximo_encadenado(9, 4, 18) == 18
    assert maximo_encadenado(9, 9, 18) == 18

    assert maximo_encadenado(24, 9, 18) == 24
    assert maximo_encadenado(24, 18, 9) == 24
    assert maximo_encadenado(24, 18, 18) == 24
    
    
print(maximo_encadenado)