
function SFRUENCY=sf(img)
[m,n]=size(img);
rf=0;
cf=0;
for i=1:m
    for j=2:n
        rf=rf+(img(i,j)-img(i,j-1))^2;
    end
end
RF=(rf/(m*n))^(1/2);

for i=2:m
    for j=1:n
        cf=cf+(img(i,j)-img(i-1,j))^2;
    end
end
CF=(cf/(m*n))^(1/2);
SF=(RF^2+CF^2)^(1/2);
SFRUENCY=SF;
end
