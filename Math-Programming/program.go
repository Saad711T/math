package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter first number: ")
	num1Str, _ := reader.ReadString('\n')
	num1Str = strings.TrimSpace(num1Str)
	num1, err := strconv.Atoi(num1Str)
	if err != nil {
		fmt.Println("Invalid input")
		return
	}

	fmt.Print("Enter second number: ")
	num2Str, _ := reader.ReadString('\n')
	num2Str = strings.TrimSpace(num2Str)
	num2, err := strconv.Atoi(num2Str)
	if err != nil {
		fmt.Println("Invalid input")
		return
	}

	fmt.Print("Enter operator (+, -, *, /): ")
	operator, _ := reader.ReadString('\n')
	operator = strings.TrimSpace(operator)

	var result int
	switch operator {
	case "+":
		result = num1 + num2
	case "-":
		result = num1 - num2
	case "*":
		result = num1 * num2
	case "/":
		if num2 == 0 {
			fmt.Println("Cannot divide by zero")
			return
		}
		result = num1 / num2
	default:
		fmt.Println("Invalid operator")
		return
	}

	fmt.Printf("Result: %d\n", result)
}