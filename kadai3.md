# �ۑ�3�@���|�[�g
17EC103 �玞�D��

���摜��old-village-2823175_640.jpg�Ƃ��A4�p�^�[���̐��l�ɂ��āA臒l�������s�����B
�ȉ��̃R�[�h�ɂ��A�摜���O���[�X�P�[���ɕϊ����ĕ\�������B
�@
ORG=imread('old-village-2823175_640.jpg'); % ���摜�̓���  
ORG= rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�  
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.1.png)  
�}1�@�O���[�X�P�[���摜�̕\��

���߂�臒l��64�Ɛݒ肵�A�P�x�l��64���傫����f��1�ɁA����ȉ��̉�f��0�ɕϊ������B

IMG = ORG > 64; % �P�x�l��64�ȏ�̉�f��1�C���̑���0�ɕϊ�
imagesc(IMG); colormap(gray); colorbar;

�ȏ��臒l�������{�������ʂ́A�}2�̒ʂ�ƂȂ����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.2.png)  
�}2�@臒l=64����臒l�����摜�̕\��

�܂��A���l��96,128,192��臒l�ɂ���臒l�������{�������ʂ́A�}3�`5�̒ʂ�ƂȂ����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.3.png)  
�}3�@臒l=96����臒l�����摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.4.png)  
�}4�@臒l=128����臒l�����摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai3/kadai3.5.png)  
�}5�@臒l=192����臒l�����摜�̕\��

�ȏ�̌��ʂ��A臒l�Ƃ��Đݒ肷��l���傫���Ȃ���A�摜�͑S�̓I�ɈÂ��Ȃ��Ă������B  
���ۂɗp�����R�[�h�́A[kadai3.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai3.m)�Ƃ���B
