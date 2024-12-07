use strict;
use warnings;

sub intro{
	print("===============\n");
	print("Perl Calculator\n");
	print("===============\n");
}

sub subtract{
	print("Subtract numbers\n");
	print("Enter number 1:\n");
	my $num1=<STDIN>;
	print("Enter number 2:\n");
	my $num2=<STDIN>;
	my $result=$num1-$num2;
	print("Result: $result\n");
}

sub add{
	print("Add numbers\n");
	print("Enter number 1:\n");
	my $num1=<STDIN>;
	print("Enter number 2:\n");
	my $num2=<STDIN>;
	my $result=$num1+$num2;
	print("Result: $result\n");
}

sub multiply{
	print("Multiply numbers\n");
	print("Enter number 1:\n");
	my $num1=<STDIN>;
	print("Enter number 2:\n");
	my $num2=<STDIN>;
	my $result=$num1*$num2;
	print("Result: $result\n");
}

sub divide{
	print("Divide numbers\n");
	print("Enter number 1:\n");
	my $num1=<STDIN>;
	print("Enter number 2:\n");
	my $num2=<STDIN>;
	my $result=$num1/$num2;
	print("Result: $result\n");
}

&intro;
&subtract;
&add;
&multiply;
&divide;