# 課題8　レポート
17EC103 守時優香

原画像をold-village-2823175_640.jpgとし、二値化した画像の連結成分のラベリングを行った。
以下のコードにより、画像をグレースケールに変換して表示した。
　
ORG = imread('old-village-2823175_640.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai8/kadai8.1.png)  
図1　グレースケール画像の表示

二値化を行うコードを、以下に示す。この時、閾値を128と定めた。

IMG = ORG > 128; % 閾値128で二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

以上の閾値処理を施した結果は、図2の通りとなった。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai8/kadai8.2.png)  
図2　閾値=128とした二値化画像の表示

ラベリングは、bwlabeln関数を用いることにより行った。これは、連結している画素の集合毎に番号を付けるものである。

IMG = bwlabeln(IMG);  
imagesc(IMG); colormap(jet); colorbar; % 画像の表示

ラベリング後の画像は、図3のように連結成分毎に別々の色が付けられたものとなった。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai8/kadai8.3.png)  
図3　連結成分のラベリング後の画像の表示

この時、ラベリング後の画像の格納されているORGの配列データを確認すると、図4のようにORGが何種類かの数値によって構成されていることがわかる。また、それぞれの要素は、同じ値を持つ別の要素と4,8連結によって直接的に、あるいは間接的に連結していることが言える。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai8/kadai8.4.png)  
図4　ラベリング後のORG配列の要素

実際に用いたコードは、[kadai8.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai8.m)とする。
