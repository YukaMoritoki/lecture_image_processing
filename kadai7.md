# �ۑ�7�@���|�[�g
17EC103 �玞�D��

���摜��snow_scene.jpg�Ƃ��A�_�C�i�~�b�N�����W��0�`255�͈̔͂Ɋg�債���B
�ȉ��̃R�[�h�ɂ��A�摜���O���[�X�P�[���ɕϊ����ĕ\�������B
�@
ORG = imread('snow_scene.jpg'); % �摜�̓ǂݍ���  
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�  
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai7/kadai7.1.png)  
�}1�@�O���[�X�P�[���摜�̕\��

�܂��A�ȉ��̃R�[�h���\�������q�X�g�O�������A�}2�֎����B

imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai7/kadai7.2.png)  
�}2�@�O���[�X�P�[���摜�̃q�X�g�O����

�摜�̔Z�x�𕂓������ɕϊ����A���߂��Z�x�l�̍ő�A�ŏ��l���A�摜�̔Z�x�l�͈̔͂�0�`255�֍L�����B���̎����������ɕϊ������̂́A�v�Z�̐��x�����߂邽�߂ł���B

ORG = double(ORG);  
mn = min(ORG(:)); % �Z�x�l�̍ŏ��l���Z�o  
mx = max(ORG(:)); % �Z�x�l�̍ő�l���Z�o  
ORG = (ORG-mn)/(mx-mn)*255;  
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai7/kadai7.3.png)  
�}3�@�_�C�i�~�b�N�����W�ϊ���̉摜

���̉摜�ɂ��ăq�X�g�O�������쐬����R�[�h�ɂ́A�ȉ��̂悤�ɁAuint8�Ƃ����֐����g�p�����B

ORG = uint8(ORG); % ���̍s�ɂ��čl�@����

���̊֐��͔z���8�r�b�g�����Ȃ������ɕϊ�������̂ł���A�_�C�i�~�b�N�����W�̊g�又�����s���ۂɕ��������ɕϊ������摜�f�[�^���A���̐����^�ɒ������߂ɗp��������̂ƍl������B�܂��A8�r�b�g=2^8=256�ƂȂ�A�Z�x�l��0�`255�͈̔͂ŕ\����邽�߁A�r�b�g���͓K�؂ł���Ǝv����B���̃R�[�h���R�����g�A�E�g����ƁA�q�X�g�O�����̗v�f���\������Ȃ��Ȃ����B  
�܂��A�쐬�����q�X�g�O������}4�֎����B�}2�̃q�X�g�O�����Ɣ�r����ƁA�q�X�g�O�����ő�l��255�ƂȂ�A���x���Ⴍ�Ȃ��Ă��邱�Ƃ��킩��B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai7/kadai7.4.png)  
�}4�@�_�C�i�~�b�N�����W�ϊ���̃q�X�g�O����

���ۂɗp�����R�[�h�́A[kadai7.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai7.m)�Ƃ���B
