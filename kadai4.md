# �ۑ�4�@���|�[�g
17EC103 �玞�D��

���摜��old-village-2823175_640.jpg�Adaymaretown_3.jpg�Ƃ��A���ꂼ��ɂ��ĔZ�x�q�X�g�O�������쐬�����B
�ȉ��̃R�[�h�ɂ��A�摜���O���[�X�P�[���ɕϊ����ĕ\�������B
�@
ORG=imread('old-village-2823175_640.jpg'); % ���摜�̓���  
ORG=rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�  
imagesc(ORG); colormap(gray); colorbar;

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai4/kadai4.1.png)  
�}1�@old-village-2823175_640.jpg�̃O���[�X�P�[��

�ȉ��̃R�[�h�ɂ��A�}2�̃q�X�g�O�������\�����ꂽ�B

imhist(ORG); % �q�X�g�O�����̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai4/kadai4.2.png)  
�}2�@old-village-2823175_640.jpg�̔Z�x�q�X�g�O����

�܂��A���l��daymaretown_3.jpg�ɂ��Ă��O���[�X�P�[���ƃq�X�g�O������\�������B�O���[�X�P�[����}3�ցA�Z�x�q�X�g�O������}4�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai4/kadai4.3.png)  
�}3�@daymaretown_3.jpg�̃O���[�X�P�[��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai4/kadai4.4.png)  
�}4�@daymaretown_3.jpg�̔Z�x�q�X�g�O����

���̂��Ƃ���A�A�e���ׂ����\������Ă���悤�ȉ摜�́A���Ԃ̔Z�x�̎g�p�p�x���������ɒ[�̐F�̎g�p�p�x�����Ȃ��X���ɂ��邽�߁A�q�X�g�O�������R�̂悤�Ȍ`�ɂȂ邱�ƁA���΂ɐ���̂悤�ȉ摜�́A����̓񃖏��݂̂̎g�p�p�x�������A���̐F�̎g�p�p�x���ɂ߂ĒႭ�Ȃ邱�Ƃ�������B  
���ۂɗp�����R�[�h�́A[kadai4.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai4.m)�Ƃ���B
