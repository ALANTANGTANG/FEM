function delta = solveEquation2(K, P, Iter_Time, Iter_Acc)
% ֱ�ӷ��ͼ�ӷ���������ƽ�ⷽ��
% ���룺 
	% ����������նȾ���K����
	% ����P
	% �����ʽsolving_way, ������ֵ���ֱ�Ϊֱ�ӷ���direction �� ��������iteration

% �����õ����м���� 

% ���ݽ����ʽ��ͬ������д�����ⷽ�̺���
% ֱ�ӷ�
% ������

% �����
	% ������λ��whole_displaycement

% ��readme.md��˵���˽������
% �������ο�����
N = length(P);
T = diag(K);
AT = 1./ T;
M = eye(N) - diag(AT) * K;
G = P .* AT;
delta = ones(N, 1);
for i = 1:Iter_Time
    deltatemp = delta;
    delta = M * deltatemp + G;
    if max(abs(delta - deltatemp)) < Iter_Acc
        break
    end
end
