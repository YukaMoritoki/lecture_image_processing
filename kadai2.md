# 課題2　レポート
17EC103 守時優香

原画像を縦425画素、横640画素のold-village-2823175_640.jpgとし、2,4,8階調の画像を生成した。
以下のコードにより、画像をグレースケールに変換して表示した。
　
ORG=imread('old-village-2823175_640.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.1.png)
図1　グレースケール画像の表示

この画像を2階調に変換するため、濃度を0～127から128～255の二種類に区切り、表示した。

IMG = ORG>127;  
imagesc(IMG); colormap(gray); colorbar;  axis image;

2階調画像を表示した結果は、図2の通りとなった。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.2.png)
図2　2階調画像の表示

4階調画像は以下のコードより、濃度を0～63,64～127,128～191,192～255の四種類に区切ることで表される。

IMG0 = ORG>63;  
IMG1 = ORG>127;  
IMG2 = ORG>191;  
IMG = IMG0 + IMG1 + IMG2;

4階調画像を作成した結果を、図3へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.3.png)  
図3　4階調画像の表示

8階調画像は以下のコードより、濃度を0～31,32～63,64～95,96～127,128～159,160～191,192～223,224～255の四種類に区切ることで表される。

IMG0 = ORG>31;  
IMG1 = ORG>63;  
IMG2 = ORG>95;  
IMG3 = ORG>127;  
IMG4 = ORG>159;  
IMG5 = ORG>191;  
IMG6 = ORG>223;  
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;

8階調画像を作成した結果を、図4へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.4.png)  
図4　8階調画像の表示(グレースケール)

なお、グレースケールに変換するコードをコメントアウトすると、上記の処理を図5の原画像に対して行うことができる。

ORG=imread('old-village-2823175_640.jpg'); % 原画像の入力  
%ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.5.png)  
図5　原画像の表示

その上で2,4,8階調画像を表示すると、それぞれ図6～8のようになった。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.6.png)  
図6　2階調画像の表示(原画像)

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.7.png)  
図7　4階調画像の表示(原画像)

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.8.png)  
図8　8階調画像の表示(原画像)

以上の結果より、グレースケールの画像に関しては、階調が多くなる程画像が正確になっていったと言える。
但し、カラー画像に関してはその限りではなく、階調が多くなる程画像が白んでいったことから、階調変換処理がカラー画像には向かないことがわかる。  
実際に用いたコードは、[kadai2.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai2.m)とする。
