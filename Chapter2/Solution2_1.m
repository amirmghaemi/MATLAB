%Create a program that asks the user for the radius of a circle and prints
%out its area and circumference.
radius = input("Give the radius of your circle:");
circ = 2 * pi * radius;
area = pi * radius ^ 2;
disp("The circumference of a circle with a radius of " + radius + " is " + circ);
disp("The area of a circle with a radius of " + radius + " is " + area);