# 課題10　レポート
17EC103 守時優香

原画像をdaymaretown_3.jpgとし、画像のエッジ抽出を行った。
以下のコードにより、画像をグレースケールに変換して表示した。
　
ORG = imread('daymaretown_3.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換  
imagesc(ORG); colormap('gray'); colorbar;% 画像表示

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai10/kadai10.1.png)  
図1　グレースケール画像の表示

初めに、プレウィット法を用いてエッジを抽出した。この時抽出されたエッジを、図2へ示す。

IIMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai10/kadai10.2.png)  
図2　プレウィット法によるエッジ抽出

また、以下のコードより、ソベル法によってエッジ抽出を行った結果を図3へ示す。

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai10/kadai10.3.png)  
図3　ソベル法によるエッジ抽出

キャニー法によってエッジ抽出を行った結果を図4へ示す。

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai10/kadai10.4.png)  
図4　キャニー法によるエッジ抽出

抽出されたエッジの明瞭度は、プレウィット法<ソベル法<キャニー法の順に高くなっており、特にキャニー法は、画像の輪郭線が途切れていないことがわかる。  
実際に用いたコードは、[kadai10.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai10.m)とする。
