import math

def arithmetic_operations(num1, num2):
    sum_result = num1 + num2
    difference_result = num1 - num2
    product_result = num1 * num2
    quotient_result = num1 / num2 if num2 != 0 else "Undefined (division by zero)"
    
    return {
        "Sum": sum_result,
        "Difference": difference_result,
        "Product": product_result,
        "Quotient": quotient_result
    }

result = arithmetic_operations(20, 15)
#change the numbers what you want .

print(result)

#Created by : Saad Almalki