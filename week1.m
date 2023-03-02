disp('1) Exercise: slicing a matrix: ')

A = [4 2 1 4;5 10 3 8;9 3 6 10;5 14 9 1]

A(:, 1:2)
A(1:4, 1:2)

disp('2) Given a 4-element vector, compute Ax: ')
x = [2;2;2;2]
v = zeros(4, 1)

# slow version:
for i = 1:4
  for j = 1:4
    v(i) = v(i) + A(i, j) * x(j);
  end
end
v

# fast version
A*x

disp('3) produto interno do vetor v e w: ')

# versão lenta
v = [2;2;3;2]
w = [3;4;6;1]
z = 0;
for i = 1:4
  z = z + v(i) * w(i)
end
z

# Versões rápidas:

sum (v .* w)
w' * v

