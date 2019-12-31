# 課題9　レポート
17EC103 守時優香

原画像をold-village-2823175_640.jpgとし、添付したノイズをメディアンフィルタで除去した。
以下のコードにより、画像をグレースケールに変換して表示した。
　
ORG = imread('old-village-2823175_640.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.1.png)  
図1　グレースケール画像の表示

次に、以下のように、密度0.02のごま塩ノイズを画像に添付した。

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

また、その時の画像を図2へ示す

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.2.png)  
図2　0.02ノイズ添付画像の表示

このように雑音の入った画像を、平滑化フィルタに通して雑音を取り除いた。その時の結果を、図3へ示す。

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.3.png)  
図3　平滑化フィルタによる雑音除去後の画像の表示(ノイズ=0.02)

次に、同じ雑音の入った画像を、今度は以下のようにメディアンフィルタに通した。除去した結果は、図4のようになった。

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.4.png)  
図4　メディアンフィルタによる雑音除去後の画像の表示(ノイズ=0.02)

また、メディアンフィルタ通過後の画像を、係数を定めて設計したインパルス応答フィルタに通した。

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計  
IMG = filter2(f,IMG,'same'); % フィルタの適用  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.5.png)  
図5　インパルス応答フィルタ適用後の画像の表示(ノイズ=0.02)


また、ノイズの密度を0.1に増やした際のノイズ入り画像を図6へ、平滑化フィルタ通過後の画像を図7へ、メディアンフィルタ通過後の画像を図8へ、インパルス応答フィルタ適用後の画像を図9へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.6.png)  
図6　0.1ノイズ添付画像の表示

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.7.png)  
図7　平滑化フィルタによるノイズ除去後の画像の表示(ノイズ=0.1)

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.8.png)  
図8　メディアンフィルタによるノイズ除去後の画像の表示(ノイズ=0.1)

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.9.png)  
図9　インパルス応答フィルタ適用後の画像の表示(ノイズ=0.1)

平滑化フィルタによってノイズを取り除いた結果を見ると、所々に黒い点が浮かんでおり、ノイズの名残が存在することがわかる。また、元のノイズが多いほど、黒い点の量もより多く見られた。  
一方、メディアンフィルタを通過した画像においては、ノイズのあった形跡の類は認識できなくなり、画質がやや低下したものの、元の画像が復元されたことがわかる。
これは、ノイズの多い画像についても同じことが言え、0.02ノイズを復元した画像と0.1ノイズを復元した画像とで、大きな違いは見られなかった。  
以上より、平滑化フィルタよりメディアンフィルタの方が、ノイズ除去に優れているといった結果が導き出される。  
実際に用いたコードは、[kadai9.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai9.m)とする。
