# �ۑ�2�@���|�[�g
17EC103 �玞�D��

���摜���c425��f�A��640��f��old-village-2823175_640.jpg�Ƃ��A2,4,8�K���̉摜�𐶐������B
�ȉ��̃R�[�h�ɂ��A�摜���O���[�X�P�[���ɕϊ����ĕ\�������B
�@
ORG=imread('old-village-2823175_640.jpg'); % ���摜�̓���  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % �摜�̕\��

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.1.png)
�}1�@�O���[�X�P�[���摜�̕\��

���̉摜��2�K���ɕϊ����邽�߁A�Z�x��0�`127����128�`255�̓��ނɋ�؂�A�\�������B

IMG = ORG>127;  
imagesc(IMG); colormap(gray); colorbar;  axis image;

2�K���摜��\���������ʂ́A�}2�̒ʂ�ƂȂ����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.2.png)
�}2�@2�K���摜�̕\��

4�K���摜�͈ȉ��̃R�[�h���A�Z�x��0�`63,64�`127,128�`191,192�`255�̎l��ނɋ�؂邱�Ƃŕ\�����B

IMG0 = ORG>63;  
IMG1 = ORG>127;  
IMG2 = ORG>191;  
IMG = IMG0 + IMG1 + IMG2;

4�K���摜���쐬�������ʂ��A�}3�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.3.png)  
�}3�@4�K���摜�̕\��

8�K���摜�͈ȉ��̃R�[�h���A�Z�x��0�`31,32�`63,64�`95,96�`127,128�`159,160�`191,192�`223,224�`255�̎l��ނɋ�؂邱�Ƃŕ\�����B

IMG0 = ORG>31;  
IMG1 = ORG>63;  
IMG2 = ORG>95;  
IMG3 = ORG>127;  
IMG4 = ORG>159;  
IMG5 = ORG>191;  
IMG6 = ORG>223;  
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;

8�K���摜���쐬�������ʂ��A�}4�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.4.png)  
�}4�@8�K���摜�̕\��(�O���[�X�P�[��)

�Ȃ��A�O���[�X�P�[���ɕϊ�����R�[�h���R�����g�A�E�g����ƁA��L�̏�����}5�̌��摜�ɑ΂��čs�����Ƃ��ł���B

ORG=imread('old-village-2823175_640.jpg'); % ���摜�̓���  
%ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % �摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.5.png)  
�}5�@���摜�̕\��

���̏��2,4,8�K���摜��\������ƁA���ꂼ��}6�`8�̂悤�ɂȂ����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.6.png)  
�}6�@2�K���摜�̕\��(���摜)

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.7.png)  
�}7�@4�K���摜�̕\��(���摜)

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai2/kadai2.8.png)  
�}8�@8�K���摜�̕\��(���摜)

�ȏ�̌��ʂ��A�O���[�X�P�[���̉摜�Ɋւ��ẮA�K���������Ȃ���摜�����m�ɂȂ��Ă������ƌ�����B
�A���A�J���[�摜�Ɋւ��Ă͂��̌���ł͂Ȃ��A�K���������Ȃ���摜������ł��������Ƃ���A�K���ϊ��������J���[�摜�ɂ͌����Ȃ����Ƃ��킩��B  
���ۂɗp�����R�[�h�́A[kadai2.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai2.m)�Ƃ���B
