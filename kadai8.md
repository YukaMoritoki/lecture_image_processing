# �ۑ�8�@���|�[�g
17EC103 �玞�D��

���摜��old-village-2823175_640.jpg�Ƃ��A��l�������摜�̘A�������̃��x�����O���s�����B
�ȉ��̃R�[�h�ɂ��A�摜���O���[�X�P�[���ɕϊ����ĕ\�������B
�@
ORG = imread('old-village-2823175_640.jpg'); % �摜�̓ǂݍ���  
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�  
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai8/kadai8.1.png)  
�}1�@�O���[�X�P�[���摜�̕\��

��l�����s���R�[�h���A�ȉ��Ɏ����B���̎��A臒l��128�ƒ�߂��B

IMG = ORG > 128; % 臒l128�œ�l��  
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��

�ȏ��臒l�������{�������ʂ́A�}2�̒ʂ�ƂȂ����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai8/kadai8.2.png)  
�}2�@臒l=128�Ƃ�����l���摜�̕\��

���x�����O�́Abwlabeln�֐���p���邱�Ƃɂ��s�����B����́A�A�����Ă����f�̏W�����ɔԍ���t������̂ł���B

IMG = bwlabeln(IMG);  
imagesc(IMG); colormap(jet); colorbar; % �摜�̕\��

���x�����O��̉摜�́A�}3�̂悤�ɘA���������ɕʁX�̐F���t����ꂽ���̂ƂȂ����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai8/kadai8.3.png)  
�}3�@�A�������̃��x�����O��̉摜�̕\��

���̎��A���x�����O��̉摜�̊i�[����Ă���ORG�̔z��f�[�^���m�F����ƁA�}4�̂悤��ORG������ނ��̐��l�ɂ���č\������Ă��邱�Ƃ��킩��B�܂��A���ꂼ��̗v�f�́A�����l�����ʂ̗v�f��4,8�A���ɂ���Ē��ړI�ɁA���邢�͊ԐړI�ɘA�����Ă��邱�Ƃ�������B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai8/kadai8.4.png)  
�}4�@���x�����O���ORG�z��̗v�f

���ۂɗp�����R�[�h�́A[kadai8.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai8.m)�Ƃ���B
