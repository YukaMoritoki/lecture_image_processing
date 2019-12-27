# 課題1　レポート

原画像を縦200画素、横200画素のdaymaretown_3.jpgとし、画像の標本化を行った。
以下のコードにより、画像をそのまま表示した。
　
ORG=imread('daymaretown_3.jpg'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.1.png)  
図1　原画像の表示

この画像を1/2サンプリングするため、ORGとして入力した画像を1/2に縮小した後、元の大きさへと拡大した。

IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

imagesc(IMG2); axis image;と実行し、1/2サンプリング画像を表示した結果は、図2の通りとなった

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.2.png)  
図2　1/2サンプリング画像の表示

1/4サンプリング以降は、縮小する画像をIMGにした点と拡大時の倍数のみを変更した処理を繰り返すことにより実現した。

IMG = imresize(IMG,0.5); % 画像の縮小
IMG2 = imresize(IMG,4,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示

1/4から1/32までサンプリングした結果を、図3～6へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.3.png)  
図3　1/4サンプリング画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.4.png)  
図4　1/8サンプリング画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.5.png)  
図5　1/16サンプリング画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.6.png)  
図6　1/32サンプリング画像の表示

以上より、画像をサンプリングすることによって画像の解像度が下がり、モザイク状になることがわかった。
