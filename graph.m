clear all;
i = 0;
init = zeros(1,10);
inter = zeros(1,10);
endp = zeros(1,10);
k = 1; m = 900.34; k1 = 17106.4601;

for i = 1:10
    init( i ) = exp( i-1 );
    inter( i ) = m * (i+9);
    endp(i) = k1 * (1 - exp (- (i+19) ));
end

x = 1:30;
y = zeros(1,30);
y(1:10) = init(1:10);
y(11:20) = inter(1:10);
y(21:30) = endp(1:10);
%axis(1:1:30, 1:18000 );
plot(x, y);
xlabel('no of degrees given');
ylabel('industrial GDP');
