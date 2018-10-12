a = [3 -2 1];
xfrom = -1;
xto = 2;
xdiv = 30;

x = linspace(xfrom, xto, xdiv);
y = zeros(1,xdiv);
n = size(a,2) - 1;
for i=1:n
    y = (y + a(i)) .* x;
end
y = y + a(n+1);

plot(x,y);
