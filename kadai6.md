# �ۑ�6�@���|�[�g
17EC103 �玞�D��

���摜��old-village-2823175_640.jpg�Ƃ��A�摜�̓�l�����s�����B
�ȉ��̃R�[�h�ɂ��A�摜���O���[�X�P�[���ɕϊ����ĕ\�������B
�@
ORG=imread('old-village-2823175_640.jpg'); % ���摜�̓���  
ORG= rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�  
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai6/kadai6.1.png)  
�}1�@�O���[�X�P�[���摜�̕\��

臒l��128�ƒ�߂ē�l�����s���R�[�h���A�ȉ��Ɏ����B

IMG = ORG>128; % 128�ɂ���l��  
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

�ȏ��臒l�������{�������ʂ́A�}2�̒ʂ�ƂȂ����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai6/kadai6.2.png)  
�}2�@臒l=128�Ƃ�����l���摜�̕\��

�܂��A�ȉ��̃R�[�h���A�f�B�U�@�ɂ���l�����s�����B���ʂ��A�}3�֎����B

IMG = dither(ORG); % �f�B�U�@�ɂ���l��  
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai6/kadai6.3.png)  
�}3�@�f�B�U�@�ɂ���l���摜�̕\��

臒l�̌���ɂ���l���ł͈�F�œh��Ԃ��ꂽ�ӏ������݂���̂ɑ΂��A�f�B�U�@�ɂ����Ă͑S�Ă̔Z�W���_�̖��x�ŕ\����Ă���悤�Ɍ����A����͈̔͂ɂ����Ĉ�F�݂̂��g���Ă���悤�ȏꏊ�͌����Ȃ������B  
���ۂɗp�����R�[�h�́A[kadai6.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai6.m)�Ƃ���B
