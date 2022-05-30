# ridge regression

## points and images
rng(97922758)
----
X3 = [-10; -8; -6; -4; -2; 2; 4; 6; 8; 10; -9; -7; -5; -3; -1; 1; 3; 5; 7; 9];
y3 = [-3; 1; 0; 0; 1.5; 4; 6; 5; 1; 8; -2.5; 0.5; 1.5; -1; -0.5; 3.5; 5.5; 2.5; 4.5; 5];
![](./images/img_0_1.png)
![](./images/img_1_1.png)
![](./images/img_2_1.png)
![](./images/img_3_1.png)
![](./images/img_4_1.png)
![](./images/img_5_1.png)

X13 = 15 * randn(50,1);
ww13 = 1;
y13 = X13 * ww13 + 10 * randn(50,1) + 20;
![](./images/img_0_2.png)
![](./images/img_1_2.png)
![](./images/img_2_2.png)
![](./images/img_3_2.png)
![](./images/img_4_2.png)
![](./images/img_5_2.png)

X8 = 10 * randn(50,2);
ww = [1; 2];
y8 = X8 * ww + 10 * randn(50,1) + 10;
![](./images/img_0_3.png)
![](./images/img_1_3.png)
![](./images/img_2_3.png)
![](./images/img_3_3.png)
![](./images/img_4_3.png)
![](./images/img_5_3.png)

X10 = 10 * randn(100,2);
ww2 = [1; 2];
y10 = X10 * ww2 + 10 * randn(100,1) + 15;
![](./images/img_0_4.png)
![](./images/img_1_4.png)
![](./images/img_2_4.png)
![](./images/img_3_4.png)
![](./images/img_4_4.png)
![](./images/img_5_4.png)

X20 = randn(50,30);
ww20 = [0; 2; 0; -3; 0; -4; 1; 0; 2; 0; 2; 3; 0; -5; 6; 0; 1; 2; 0; 10; 0; 0; 3; 4; 5; 0; 0; -6; -8; 0];
y20 = X20 * ww20 + randn(50,1) * 0.1 + 5;
![](./images/img_0_5.png)
![](./images/img_1_5.png)
![](./images/img_2_5.png)
![](./images/img_3_5.png)
![](./images/img_4_5.png)
![](./images/img_5_5.png)
