# 課題7　レポート
17EC103 守時優香

原画像をsnow_scene.jpgとし、ダイナミックレンジを0～255の範囲に拡大した。
以下のコードにより、画像をグレースケールに変換して表示した。
　
ORG = imread('snow_scene.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai7/kadai7.1.png)  
図1　グレースケール画像の表示

また、以下のコードより表示したヒストグラムを、図2へ示す。

imhist(ORG); % 濃度ヒストグラムを生成、表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai7/kadai7.2.png)  
図2　グレースケール画像のヒストグラム

画像の濃度を浮動小数に変換し、求めた濃度値の最大、最小値より、画像の濃度値の範囲を0～255へ広げた。この時浮動小数に変換したのは、計算の精度を高めるためである。

ORG = double(ORG);  
mn = min(ORG(:)); % 濃度値の最小値を算出  
mx = max(ORG(:)); % 濃度値の最大値を算出  
ORG = (ORG-mn)/(mx-mn)*255;  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai7/kadai7.3.png)  
図3　ダイナミックレンジ変換後の画像

この画像についてヒストグラムを作成するコードには、以下のように、uint8という関数が使用される。

ORG = uint8(ORG); % この行について考察せよ

この関数は配列を8ビット符号なし整数に変換するものであり、ダイナミックレンジの拡大処理を行う際に浮動小数に変換した画像データを、元の整数型に直すために用いられるものと考えられる。また、8ビット=2^8=256となり、濃度値は0～255の範囲で表されるため、ビット数は適切であると思われる。このコードをコメントアウトすると、ヒストグラムの要素が表示されなくなった。  
また、作成したヒストグラムを図4へ示す。図2のヒストグラムと比較すると、ヒストグラム最大値が255となり、密度が低くなっていることがわかる。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai7/kadai7.4.png)  
図4　ダイナミックレンジ変換後のヒストグラム

実際に用いたコードは、[kadai7.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai7.m)とする。
