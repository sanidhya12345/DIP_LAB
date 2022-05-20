se1=[-1,-1,-1;2,2,2;-1,-1,-1];
se2=[2,-1,-1;-1,2,-1;-1,-1,2];
se3=[-1,2,-1;-1,2,-1;-1,2,-1];
se4=[-1,-1,2;-1,2,-1;2,-1,-1];

im1=imfilter(lin,se1,'symmetric');
im2=imfilter(lin,se2,'symmetric');
im3=imfilter(lin,se3,'symmetric');
im4=imfilter(lin,se4,'symmetric');

im1=abs(im1);
im2=abs(im2);
im3=abs(im3);
im4=abs(im4);

subplot(3,3,1);
imshow(lin);
title('original');

subplot(3,3,2);
imshow(im1);
title('1');

subplot(3,3,3);
imshow(im2);
title('2');

subplot(3,3,4);
imshow(im3);
title('3');

subplot(3,3,5);
imshow(im4);
title('4');

ires=zeros(10);
[m,n]=size(lin);

for i=1:m
    for j=1:n
        maxoftwo=max(im1(i,j),im2(i,j));
        maxofrest=max(im3(i,j),im4(i,j));
        ires(i,j)=max(maxoftwo,maxofrest);
    end
end

subplot(3,3,6);

imshow(ires);title('5');

imres=ires;
for i=1:m
    for j=1:n
        if imres(i,j)<9
            imres(i,j)=0;
        end
    end
end
subplot(3,3,7);

imshow(imres);title('result');
