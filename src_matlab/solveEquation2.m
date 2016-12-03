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
% Iter_Time = 1000;
% Iter_Acc = 1e-5;
% K = diag([2 1]);
% P = [1; 1];
N = length(P);
T = diag(K);
AT = sparse(1./ T);
M = eye(N) - diag(AT) * K;
sum(eig(M) > 1)
G = P .* AT;
delta = sparse(ones(N, 1));
for i = 1:Iter_Time
    deltatemp = delta;
    delta = M * deltatemp + G;
    if max(abs(delta - deltatemp)) < Iter_Acc
        break
    end
end
