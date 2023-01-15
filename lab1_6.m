a = input("Podaj A:");
b = input("Podaj B:");
c = input("Podaj C:");

y = volume(a, b, c);
disp(y)

function [y] = volume(a, b, c)
 y = a * b *c;
end
