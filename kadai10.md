# �ۑ�10�@���|�[�g
17EC103 �玞�D��

���摜��daymaretown_3.jpg�Ƃ��A�摜�̃G�b�W���o���s�����B
�ȉ��̃R�[�h�ɂ��A�摜���O���[�X�P�[���ɕϊ����ĕ\�������B
�@
ORG = imread('daymaretown_3.jpg'); % ���摜�̓���  
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�  
imagesc(ORG); colormap('gray'); colorbar;% �摜�\��

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai10/kadai10.1.png)  
�}1�@�O���[�X�P�[���摜�̕\��

���߂ɁA�v���E�B�b�g�@��p���ăG�b�W�𒊏o�����B���̎����o���ꂽ�G�b�W���A�}2�֎����B

IIMG = edge(ORG,'prewitt'); % �G�b�W���o�i�v���E�B�b�g�@�j  
imagesc(IMG); colormap('gray'); colorbar;% �摜�\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai10/kadai10.2.png)  
�}2�@�v���E�B�b�g�@�ɂ��G�b�W���o

�܂��A�ȉ��̃R�[�h���A�\�x���@�ɂ���ăG�b�W���o���s�������ʂ�}3�֎����B

IMG = edge(ORG,'sobel'); % �G�b�W���o�i�\�x���@�j  
imagesc(IMG); colormap('gray'); colorbar;% �摜�\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai10/kadai10.3.png)  
�}3�@�\�x���@�ɂ��G�b�W���o

�L���j�[�@�ɂ���ăG�b�W���o���s�������ʂ�}4�֎����B

IMG = edge(ORG,'canny'); % �G�b�W���o�i�L���j�[�@�j  
imagesc(IMG); colormap('gray'); colorbar;% �摜�\��

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai10/kadai10.4.png)  
�}4�@�L���j�[�@�ɂ��G�b�W���o

���o���ꂽ�G�b�W�̖��ēx�́A�v���E�B�b�g�@<�\�x���@<�L���j�[�@�̏��ɍ����Ȃ��Ă���A���ɃL���j�[�@�́A�摜�̗֊s�����r�؂�Ă��Ȃ����Ƃ��킩��B  
���ۂɗp�����R�[�h�́A[kadai10.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai10.m)�Ƃ���B
