int main(int argc,char *argv[])
{
int num1,num2;
char operator;



	printf("Enter 2 numbers:");
	scanf("%d%d",&num1,&num2);
	printf("operators:+,-,*,/,q\n");
	while(1)
	{
	
	scanf("%c",&operator);

	switch(operator)
	{
		case '+': 
				printf("%d\t",addition(num1,num2));
				break;
		case '-': 
				printf("%d\t",subtraction(num1,num2));
				break;
		case '*': 
				printf("%d\n",multiplication(num1,num2));
				break;
		case '/':
				printf("%f\n",division(num1,num2));
				break;
		case 'q': 
			exit(0);
		
		
		
	}
	}

}
