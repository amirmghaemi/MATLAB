%Create a program that asks the user to input a distance (m) and how long
%it takes to travel that distance (s), and it will calculate and print 
%the velocity (m/s) using the following equation: v =?s/?t
s = input("Enter a distance (meters): ");
t = input("Enter a time (seconds) to travel the distance: ");
v = s / t;
fprintf("The velocity to travel %.2f meters in %.2f seconds is %.2f m/s\n", s, t, v);