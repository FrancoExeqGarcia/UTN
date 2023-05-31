def multiplosDeTres(a: int, b: int) -> list[int]:

    return [num for num in range(a, b) if num % 3 == 0]

#muestro que funciona a continuacion
print(multiplosDeTres(1, 15))  
print(multiplosDeTres(7, 30))  
print(multiplosDeTres(5, 6))   
elif