# 課題4　レポート
17EC103 守時優香

原画像をold-village-2823175_640.jpg、daymaretown_3.jpgとし、それぞれについて濃度ヒストグラムを作成した。
以下のコードにより、画像をグレースケールに変換して表示した。
　
ORG=imread('old-village-2823175_640.jpg'); % 原画像の入力  
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar;

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai4/kadai4.1.png)  
図1　old-village-2823175_640.jpgのグレースケール

以下のコードにより、図2のヒストグラムが表示された。

imhist(ORG); % ヒストグラムの表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai4/kadai4.2.png)  
図2　old-village-2823175_640.jpgの濃度ヒストグラム

また、同様にdaymaretown_3.jpgについてもグレースケールとヒストグラムを表示した。グレースケールを図3へ、濃度ヒストグラムを図4へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai4/kadai4.3.png)  
図3　daymaretown_3.jpgのグレースケール

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai4/kadai4.4.png)  
図4　daymaretown_3.jpgの濃度ヒストグラム

このことから、陰影が細かく表現されているような画像は、中間の濃度の使用頻度が高く両極端の色の使用頻度が少ない傾向にあるため、ヒストグラムが山のような形になること、反対に線画のような画像は、特定の二ヶ所のみの使用頻度が高く、他の色の使用頻度が極めて低くなることが言える。  
実際に用いたコードは、[kadai4.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai4.m)とする。
