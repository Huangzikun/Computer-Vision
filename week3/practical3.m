figure
grayscale = [
    150 170 190 190 10 11 12 10;
    180 250 170 180 11 13 12 11;
    175 160 170 175 13 12 11 12;
    175 185 175 170 13 11 10 12;
    100 60 100 60 100 60 100 60;
    60 100 60 100 60 100 60 100;
    100 60 100 60 100 60 100 60;
    60 100 60 100 60 100 60 100;
    ];
%mesh(grayscale)

core1 = [1 1 1;1 1 1;1 1 1] * 1/9;
core1Filter = filter2(grayscale, core1);
%mesh(core1Filter);

core2 = [0 1 0; 1 -4 1; 0 1 0];
core2Filter = filter2(grayscale, core2);
%mesh(core2Filter)

sobalX = [-1 0 1; -2 0 2; -1 0 1];
sobalY = [1 2 1; 0 0 0; -1 -2 -1];
sobalXFilter = filter2(grayscale, sobalX);
sobalYFilter = filter2(grayscale, sobalY);


%2
[x, y] = size(grayscale);
extandGrayscale = zeros(x+2, y+2);
for i=2:x+1
    for j=2:y+1
        extandGrayscale(i, j) = grayscale(i-1, j-1);
    end
end

grandX = zeros(x+2,y+2);
grandY = zeros(x+2,y+2);

for i=1:x
    for j=1:y
        current = extandGrayscale(i:i+2,j:j+2);
        globalX = sobalX .* current;
        globalY = sobalY .* current;

        grandX(i+1, j+1) = sum(globalX(:));
        grandY(i+1, j+1) = sum(globalY(:));
    end
end



