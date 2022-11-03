function [outputArr] = globalthresh(inputArr)
[m, n] = size(inputArr);
outputArr(m, n) = 0;
avg = 0;
for i=1:m
    for j=1:n
        avg = avg + inputArr(i, j);
    end
end
avg = avg/m * n;

s = 0;
for i=1:m
    for j=1:n
        limit = (inputArr(i, j) - avg);
        s = s + limit * limit;
    end
end
s = s/m * n;
s = s^0.5;

for i=1:m
    for j=1:n
        outputArr(i, j) = s - (inputArr(i, j));
    end
end

end