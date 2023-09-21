%Create a program that asks the user to input their weight (N) and assuming
%they are on Earth, it will calculate and print their mass (kg) using the 
%following equation: w=mg
w = input("Enter your weight in Newtons: ");
g = 9.8;
m = w / g;
fprintf("Your mass on Earth is %.2f kg/n", m);