# �ۑ�5�@���|�[�g
17EC103 �玞�D��

���摜��old-village-2823175_640.jpg�Ƃ��A���ʕ��͖@��p���ĉ摜�̓�l�����s�����B
�ȉ��̃R�[�h�ɂ��A�摜���O���[�X�P�[���ɕϊ����ĕ\�������B
�@
ORG=imread('old-village-2823175_640.jpg'); % ���摜�̓���  
ORG= rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�  
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��

�܂��A���̌��ʂ�}1�֎����B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai5/kadai5.1.png)  
�}1�@�O���[�X�P�[���摜�̕\��

�ȉ��ɁA���ʕ��͖@���s���R�[�h�������B�q�X�g�O�����̃f�[�^�̕��ς�myu_T�A�����x�̍ő�l���i�[����ϐ���臒l��max_val�A�i�[����ϐ���max_thres�Ƃ���B

H = imhist(ORG); %�q�X�g�O�����̃f�[�^���x�N�g��E�Ɋi�[
myu_T = mean(H);  
max_val = 0;  
max_thres = 1;

�܂��A臒lt=1�`255�܂ł͈͓̔��Ńq�X�g�O�����𕪊�������A���ꂼ��̃N���X�ɂ��ĉ�f���A���ϒl�A���U�����߁A�N���X�ԕ��U�ƃN���X�����U�����߂��B

for t=1:255  
C1 = H(1:t); %�q�X�g�O������2�̃N���X�ɕ�����  
C2 = H(t+1:256);  
n1 = sum(C1); %��f���̎Z�o  
n2 = sum(C2);  
myu1 = mean(C1); %���ϒl�̎Z�o  
myu2 = mean(C2);  
sigma1 = var(C1); %���U�̎Z�o  
sigma2 = var(C2);  
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %�N���X�����U�̎Z�o  
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %�N���X�ԕ��U�̎Z�o

���̎��A�N���X�ԕ��U���N���X�����U��苁�߂��镪���x�̒l���A���̎��_�ɂ�����max_val�̒l���������ꍇ�Amax_val��max_thres�̒l���X�V����悤�ɂ����B

if max_val<sigma_B/sigma_w  
max_val = sigma_B/sigma_w;  
max_thres =t;  
end;  
end;


�ȏ�̓�����At=1�`255�̑S�Ă̏ꍇ�ɂ��čs�����B���̌�A臒l��max_thres�̒l�Ƃ���臒l�������{�����B

IMG = ORG > max_thres;  
imagesc(IMG); colormap(gray); colorba

�܂��A���̌��ʂ͐}2�̒ʂ�ƂȂ����B���̎��Amax_thres�̒l��198�ƂȂ��Ă���B

![���摜](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/image/kadai5/kadai5.2.png)  
�}2�@���ʕ��͖@�ɂ���l���摜�̕\��

���ۂɗp�����R�[�h�́A[kadai5.m](https://github.com/YukaMoritoki/lecture_image_processing/blob/master/kadai5.m)�Ƃ���B
