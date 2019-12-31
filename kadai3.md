# 課題3　レポート
17EC103 守時優香

原画像をold-village-2823175_640.jpgとし、4パターンの数値について、閾値処理を行った。
以下のコードにより、画像をグレースケールに変換して表示した。
　
ORG=imread('old-village-2823175_640.jpg'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.1.png)  
図1　グレースケール画像の表示

初めに閾値を64と設定し、輝度値が64より大きい画素を1に、それ以下の画素を0に変換した。

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;

以上の閾値処理を施した結果は、図2の通りとなった。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.2.png)  
図2　閾値=64時の閾値処理画像の表示

また、同様に96,128,192の閾値について閾値処理を施した結果は、図3～5の通りとなった。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.3.png)  
図3　閾値=96時の閾値処理画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.4.png)  
図4　閾値=128時の閾値処理画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.5.png)  
図5　閾値=192時の閾値処理画像の表示

以上の結果より、閾値として設定する値が大きくなる程、画像は全体的に暗くなっていった。  
実際に用いたコードは、[kadai3.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai3.m)とする。
