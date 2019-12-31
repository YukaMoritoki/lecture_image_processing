# 課題6　レポート
17EC103 守時優香

原画像をold-village-2823175_640.jpgとし、画像の二値化を行った。
以下のコードにより、画像をグレースケールに変換して表示した。
　
ORG=imread('old-village-2823175_640.jpg'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai6/kadai6.1.png)  
図1　グレースケール画像の表示

閾値を128と定めて二値化を行うコードを、以下に示す。

IMG = ORG>128; % 128による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

以上の閾値処理を施した結果は、図2の通りとなった。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai6/kadai6.2.png)  
図2　閾値=128とした二値化画像の表示

また、以下のコードより、ディザ法による二値化を行った。結果を、図3へ示す。

IMG = dither(ORG); % ディザ法による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai6/kadai6.3.png)  
図3　ディザ法による二値化画像の表示

閾値の決定による二値化では一色で塗りつぶされた箇所が存在するのに対し、ディザ法においては全ての濃淡が点の密度で表されているように見え、特定の範囲において一色のみが使われているような場所は見られなかった。  
実際に用いたコードは、[kadai6.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai6.m)とする。
