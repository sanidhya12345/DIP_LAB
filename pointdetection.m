se=[-1,-1,-1;-1,8,-1;-1,-1,-1];
pt=cast(pt,'double');
image=imfilter(pt,se,'symmetric');
res=abs(image);
subplot(2,2,1);
pt=cast(pt,'uint8');
imshow(pt));
title('original');

subplot(2,2,2);
imshow(image);
title('without abs');

subplot(2,2,3);
imshow(res);
title('with abs');

[m,n]=size(pt);
dup=res;
for i=1:m
    for j=1:n
        if dup(i,j)<4
            dup(i,j)=0;
        end
    end
end

subplot(2,2,4);
imshow(dup);
title('result');
            
