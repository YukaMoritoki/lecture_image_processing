# �ۑ�1�@���|�[�g

���摜���c200��f�A��200��f��daymaretown_3.jpg�Ƃ��A�摜�̕W�{�����s�����B
�ȉ��̃R�[�h�ɂ��A�摜�����̂܂ܕ\�������B
�@
ORG=imread('daymaretown_3.jpg'); % ���摜�̓���
imagesc(ORG); axis image; % �摜�̕\��

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.1.png)  
�}1�@���摜�̕\��

���̉摜��1/2�T���v�����O���邽�߁AORG�Ƃ��ē��͂����摜��1/2�ɏk��������A���̑傫���ւƊg�債���B

IMG = imresize(ORG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,2,'box'); % �摜�̊g��

imagesc(IMG2); axis image;�Ǝ��s���A1/2�T���v�����O�摜��\���������ʂ́A�}2�̒ʂ�ƂȂ���

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.2.png)  
�}2�@1/2�T���v�����O�摜�̕\��

1/4�T���v�����O�ȍ~�́A�k������摜��IMG�ɂ����_�Ɗg�厞�̔{���݂̂�ύX�����������J��Ԃ����Ƃɂ����������B

IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,4,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��

1/4����1/32�܂ŃT���v�����O�������ʂ��A�}3�`6�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.3.png)  
�}3�@1/4�T���v�����O�摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.4.png)  
�}4�@1/8�T���v�����O�摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.5.png)  
�}5�@1/16�T���v�����O�摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai1/kadai1.6.png)  
�}6�@1/32�T���v�����O�摜�̕\��

�ȏ���A�摜���T���v�����O���邱�Ƃɂ���ĉ摜�̉𑜓x��������A���U�C�N��ɂȂ邱�Ƃ��킩�����B
