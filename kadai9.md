# �ۑ�9�@���|�[�g
17EC103 �玞�D��

���摜��old-village-2823175_640.jpg�Ƃ��A�Y�t�����m�C�Y�����f�B�A���t�B���^�ŏ��������B
�ȉ��̃R�[�h�ɂ��A�摜���O���[�X�P�[���ɕϊ����ĕ\�������B
�@
ORG = imread('old-village-2823175_640.jpg'); % �摜�̓ǂݍ���  
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�  
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.1.png)  
�}1�@�O���[�X�P�[���摜�̕\��

���ɁA�ȉ��̂悤�ɁA���x0.02�̂��܉��m�C�Y���摜�ɓY�t�����B

ORG = imnoise(ORG,'salt & pepper',0.02); % �m�C�Y�Y�t  
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

�܂��A���̎��̉摜��}2�֎���

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.2.png)  
�}2�@0.02�m�C�Y�Y�t�摜�̕\��

���̂悤�ɎG���̓������摜���A�������t�B���^�ɒʂ��ĎG������菜�����B���̎��̌��ʂ��A�}3�֎����B

IMG = filter2(fspecial('average',3),ORG); % �������t�B���^�ŎG������  
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.3.png)  
�}3�@�������t�B���^�ɂ��G��������̉摜�̕\��(�m�C�Y=0.02)

���ɁA�����G���̓������摜���A���x�͈ȉ��̂悤�Ƀ��f�B�A���t�B���^�ɒʂ����B�����������ʂ́A�}4�̂悤�ɂȂ����B

IMG = medfilt2(ORG,[3 3]); % ���f�B�A���t�B���^�ŎG������  
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.4.png)  
�}4�@���f�B�A���t�B���^�ɂ��G��������̉摜�̕\��(�m�C�Y=0.02)

�܂��A���f�B�A���t�B���^�ʉߌ�̉摜���A�W�����߂Đ݌v�����C���p���X�����t�B���^�ɒʂ����B

f=[0,-1,0;-1,5,-1;0,-1,0]; % �t�B���^�̐݌v  
IMG = filter2(f,IMG,'same'); % �t�B���^�̓K�p  
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.5.png)  
�}5�@�C���p���X�����t�B���^�K�p��̉摜�̕\��(�m�C�Y=0.02)


�܂��A�m�C�Y�̖��x��0.1�ɑ��₵���ۂ̃m�C�Y����摜��}6�ցA�������t�B���^�ʉߌ�̉摜��}7�ցA���f�B�A���t�B���^�ʉߌ�̉摜��}8�ցA�C���p���X�����t�B���^�K�p��̉摜��}9�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.6.png)  
�}6�@0.1�m�C�Y�Y�t�摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.7.png)  
�}7�@�������t�B���^�ɂ��m�C�Y������̉摜�̕\��(�m�C�Y=0.1)

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.8.png)  
�}8�@���f�B�A���t�B���^�ɂ��m�C�Y������̉摜�̕\��(�m�C�Y=0.1)

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai9/kadai9.9.png)  
�}9�@�C���p���X�����t�B���^�K�p��̉摜�̕\��(�m�C�Y=0.1)

�������t�B���^�ɂ���ăm�C�Y����菜�������ʂ�����ƁA���X�ɍ����_��������ł���A�m�C�Y�̖��c�����݂��邱�Ƃ��킩��B�܂��A���̃m�C�Y�������قǁA�����_�̗ʂ���葽������ꂽ�B  
����A���f�B�A���t�B���^��ʉ߂����摜�ɂ����ẮA�m�C�Y�̂������`�Ղ̗ނ͔F���ł��Ȃ��Ȃ�A�掿�����ቺ�������̂́A���̉摜���������ꂽ���Ƃ��킩��B
����́A�m�C�Y�̑����摜�ɂ��Ă��������Ƃ������A0.02�m�C�Y�𕜌������摜��0.1�m�C�Y�𕜌������摜�ƂŁA�傫�ȈႢ�͌����Ȃ������B  
�ȏ���A�������t�B���^��胁�f�B�A���t�B���^�̕����A�m�C�Y�����ɗD��Ă���Ƃ��������ʂ������o�����B  
���ۂɗp�����R�[�h�́A[kadai9.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai9.m)�Ƃ���B
