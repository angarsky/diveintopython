> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/functions/return-function

Возвращение функции из функции означает, что функция создается и возвращается в качестве вывода другой функции. Это возможно в Python, потому что функции являются объектами первого класса, что означает, что их можно передавать так же, как и любой другой объект, такой как целые числа, строки или списки.

## Возврат Функции в Python

В следующих примерах функции Python используются для возврата других функций, позволяя динамично изменять поведение на основе входных параметров.

### Пример 1: Основное Использование Возврата Функции

Рассмотрим `function1`, которая возвращает другую функцию, `function2`. Эта внутренняя функция `function2` умножает свой аргумент на указанное значение, `a`. Когда вызывается `function1(5)`, она возвращает `function2` с `a`, установленным в `5`. Полученная функция присваивается переменной `multiply_by_5`. Впоследствии вызов `multiply_by_5(3)` выводит `15`.

```python
def function1(a):
    def function2(b):
        return a * b
    return function2

multiply_by_5 = function1(5)
result = multiply_by_5(3)
print(result)  # Output: 15
```

### Пример 2: Условное Возвращение Функций

В этом сценарии, `function3` определяет, какую функцию вернуть, основываясь на значении параметра `operation`. Она содержит две внутренние функции: `add_numbers` и `multiply_numbers`, которые, соответственно, выполняют операции сложения и умножения.

Передавая `add` или `multiply` в `function3`, она возвращает соответствующую внутреннюю функцию. Например, если `operation_type` установлено в `add`, функция `add_numbers` назначается переменной `math_function`. Вызов `math_function(3, 5)` приведет к сложению двух чисел, в результате чего будет выведено `8`.

```python
def function3(operation):
    def add_numbers(a, b):
        return a + b
    
    def multiply_numbers(a, b):
        return a * b
    
    if operation == "add":
        return add_numbers
    elif operation == "multiply":
        return multiply_numbers

operation_type = "add"
math_function = function3(operation_type)
result = math_function(3, 5)
print(result)  # Output: 8
```

В заключение, эти примеры демонстрируют, как функции Python могут быть использованы для возврата других функций динамически, обеспечивая гибкость в обработке операций в зависимости от условий ввода.

## Изучение Концепции Вложенных Функций и Возвращения Функций

В Python функции могут быть вложенными, что означает, что вы можете определить одну функцию внутри другой функции. Вы также можете вернуть функцию из другой функции в Python. Этот концепт вложенных функций и возвращения функций позволяет большей гибкости и является мощным инструментом в программировании.

### Пример 1: Возвращение Функции из Функции

```python 
def create_adder(num):
    def adder(x):
        return num + x
    return adder

add5 = create_adder(5)
print(add5(3))    # Output: 8
```

В этом примере мы определяем функцию `create_adder`, которая принимает параметр `num`. Внутри `create_adder`, мы определяем еще одну функцию `adder`, которая принимает параметр `x` и возвращает сумму `num` и `x`. В конце `create_adder` возвращает `adder`.

Затем мы создаем новую функцию `add5`, вызвав `create_adder(5)`. Это означает, что `add5` теперь является ссылкой на `adder` с `num`, установленным в 5. Когда мы вызываем `add5(3)`, мы передаем параметр `x` как `3`, что приводит к выводу `8`.

### Пример 2: Вложенные Функции

```python 
def outer_function(num):
    def inner_function(x):
        return num + x
    return inner_function

add3 = outer_function(3)
add5 = outer_function(5)

print(add3(10))    # Output: 13
print(add5(10))    # Output: 15
```

В этом примере мы определяем функцию `outer_function`, которая принимает параметр `num`. Внутри `outer_function` мы определяем другую функцию `inner_function`, которая принимает параметр `x` и возвращает сумму `num` и `x`. В конце `outer_function` возвращает `inner_function`.

Затем мы создаем две новые функции `add3` и `add5`, вызывая `outer_function(3)` и `outer_function(5)` соответственно. Это означает, что `add3` теперь является ссылкой на `inner_function` с `num`, установленным в 3, а `add5` является ссылкой на `inner_function` с `num`, установленным в 5. Когда мы вызываем `add3(10)` и `add5(10)`, мы передаем параметр `x` как `10`, что приводит к выводу `13` и `15` соответственно.

## Понимание Преимуществ Возвращения Функции из Другой Функции

Одно из значительных преимуществ возвращения функции из другой функции в Python заключается в том, что это обеспечивает гибкость. Возвращая функцию, программист может создать более конкретную и настроенную функцию на основе переданных в оригинальную функцию входных данных. Это также позволяет эффективно переиспользовать код.

Другое преимущество возвращения функции из другой функции заключается в том, что это может упростить сложность кода, что приводит к более читабельной структуре кода. Код становится более организованным и понятным, таким образом повышая его обслуживаемость и процессы отладки.

Вот два примера возвращения функции из функции в Python:

### Пример 1: Возвращение Функции, Умножающей Любое Число на Заданный Множитель:

```python
def multiply(factor):
    def inner(num):
        return num * factor
    return inner

double = multiply(2)
triple = multiply(3)

print(double(5)) #output: 10
print(triple(5)) #output: 15
```

Вызывая `multiply(2)` и `multiply(3)`, мы создаем две новые функции `double` и `triple`, соответственно, которые можно использовать для умножения любого числа на `2` или `3`.

### Пример 2: Возвращение Функции, Выполняющей Математические Операции:

```python
def operate(operation):
    def inner(num1, num2):
        if operation == 'add':
            return num1 + num2
        elif operation == 'subtract':
            return num1 - num2
        elif operation == 'multiply':
            return num1 * num2
        elif operation == 'divide':
            return num1 / num2
    return inner

add_func = operate('add')
subtract_func = operate('subtract')

print(add_func(10, 5)) #output: 15
print(subtract_func(10, 5)) #output: 5
```

Вызывая `operate('add')` и `operate('subtract')`, мы создаем две новые функции `add_func` и `subtract_func` соответственно, которые могут быть использованы для выполнения операций сложения и вычитания над любыми двумя числами.

## Понимание Различных Способов Определения и Возвращения Функций в Python

Возвращение функции из функции может быть полезным в ситуациях, когда нам нужно динамически создавать функции на основе определенных условий.

```python
def create_adder(num):
    def adder(x):
        return x + num
    return adder

add5 = create_adder(5)
print(add5(10)) # Output: 15
```

В этом примере мы определяем функцию под названием `create_adder`, которая принимает параметр `num`. Внутри функции `create_adder` мы определяем другую функцию под названием `adder`, которая принимает параметр `x` и возвращает сумму `num` и `x`. В конце концов, мы возвращаем функцию `adder` в качестве вывода.

Затем мы присваиваем вывод `create_adder(5)` переменной под названием `add5`. Это означает, что `add5` теперь является функцией, которая принимает параметр `x` и возвращает сумму `5` и `x`. Когда мы вызываем `add5(10)`, это возвращает `15`.

## Исследование Использования Аргументов в Возвращаемых Функциях

```python
def power(base):
    def exponent(exp):
        return base ** exp
    return exponent

square = power(2)
cube = power(3)

print(square(5)) # Output: 25
print(cube(3)) # Output: 27
```

В этом примере вложенная функция `exponent` определена внутри функции `power`. Функция `exponent` вычисляет число, возведенное в степень. Функция `power` возвращает функцию `exponent`. Двум переменным `square` и `cube` присваиваются значения путем вызова функции `power` с разными основаниями. Последние два оператора print вызывают `square` и `cube` с разными значениями степеней.

```python
def operation(operator):
    def calculate(num1, num2):
        if operator == '+':
            return num1 + num2
        elif operator == '-':
            return num1 - num2
        elif operator == '*':
            return num1 * num2
        elif operator == '/':
            return num1 / num2
        else:
            return "Invalid operator"
    return calculate

addition = operation('+')
subtraction = operation('-')
multiplication = operation('*')
division = operation('/')

print(addition(5, 3)) # Output: 8
print(subtraction(5, 3)) # Output: 2
print(multiplication(5, 3)) # Output: 15
print(division(5, 3)) # Output: 1.6666666666666667
print(operation('%')(5, 3)) # Output: Invalid operator
```

В этом примере функция `operation` принимает параметр `operator` и возвращает функцию `calculate`. Функция `calculate` выполняет арифметическую операцию, указанную в параметре `operator`, над двумя числовыми аргументами. Четыре переменные `addition`, `subtraction`, `multiplication` и `division` присваиваются путём вызова функции `operation` с различными значениями оператора. Итоговый оператор печати показывает, что происходит, когда в качестве аргумента используется недопустимый оператор.
