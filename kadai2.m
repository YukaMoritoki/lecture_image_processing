% �ۑ�Q�@�K�����Ƌ^���֊s
% �Q�K���C�S�K���C�W�K���̉摜�𐶐�����D
% ���L�̓T���v���v���O�����ł���D
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D

clear; % �ϐ��̃I�[���N���A

ORG=imread('old-village-2823175_640.jpg'); % ���摜�̓���
%ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~

% �Q�K���摜�̐���
IMG = ORG>127;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% �S�K���摜�̐���
IMG0 = ORG>63;
IMG1 = ORG>127;
IMG2 = ORG>191;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% �W�K���摜�̐���
IMG0 = ORG>31;
IMG1 = ORG>63;
IMG2 = ORG>95;
IMG3 = ORG>127;
IMG4 = ORG>159;
IMG5 = ORG>191;
IMG6 = ORG>223;
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;
imagesc(IMG); colormap(gray); colorbar;  axis image;
