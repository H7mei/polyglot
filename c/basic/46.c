#include <stdio.h>

double power(double, int );

int main(void)
{
	double twentyFiveValue = power(5.0, 2);
	double piSquaredValue = power(3.14159265, 2);
	double piCubedValue = power(3.14159265, 3);
	double bigPower = power(1.23, 20);
	double millionValue = power(10, 6);
	printf("Thirty five: %.4f\n", twentyFiveValue);
	printf("Pi squared: %.4f\n", piSquaredValue);
	printf("Pi cubed: %.4f\n", piCubedValue);
	printf("Not so big number: %.4f\n", bigPower);
	printf("Million: %.4f\n", millionValue);
	return 0;
}


double power(double base, int exponent)
{
	double result = 1;
	for (int i = 0; i < exponent; i++)
	{
		result *= base;
	}
	return result;	
}

