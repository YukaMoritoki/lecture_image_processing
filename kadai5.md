# 課題5　レポート
17EC103 守時優香

原画像をold-village-2823175_640.jpgとし、判別分析法を用いて画像の二値化を行った。
以下のコードにより、画像をグレースケールに変換して表示した。
　
ORG=imread('old-village-2823175_640.jpg'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

また、その結果を図1へ示す。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai5/kadai5.1.png)  
図1　グレースケール画像の表示

以下に、判別分析法を行うコードを示す。ヒストグラムのデータの平均をmyu_T、分離度の最大値を格納する変数を閾値をmax_val、格納する変数をmax_thresとする。

H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納
myu_T = mean(H);  
max_val = 0;  
max_thres = 1;

また、閾値t=1～255までの範囲内でヒストグラムを分割した後、それぞれのクラスについて画素数、平均値、分散を求め、クラス間分散とクラス内分散を求めた。

for t=1:255  
C1 = H(1:t); %ヒストグラムを2つのクラスに分ける  
C2 = H(t+1:256);  
n1 = sum(C1); %画素数の算出  
n2 = sum(C2);  
myu1 = mean(C1); %平均値の算出  
myu2 = mean(C2);  
sigma1 = var(C1); %分散の算出  
sigma2 = var(C2);  
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出  
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出

この時、クラス間分散÷クラス内分散より求められる分離度の値が、その時点におけるmax_valの値を上回った場合、max_valとmax_thresの値を更新するようにした。

if max_val<sigma_B/sigma_w  
max_val = sigma_B/sigma_w;  
max_thres =t;  
end;  
end;


以上の動作を、t=1～255の全ての場合について行った。その後、閾値をmax_thresの値として閾値処理を施した。

IMG = ORG > max_thres;  
imagesc(IMG); colormap(gray); colorba

また、その結果は図2の通りとなった。この時、max_thresの値は198となっている。

![原画像](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai5/kadai5.2.png)  
図2　判別分析法による二値化画像の表示

実際に用いたコードは、[kadai5.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai5.m)とする。
