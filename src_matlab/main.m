% 本程序对有限元算法进行了计算
% 变量的定义见 README.md

% Step 1： 数据读取
input_path = 'input/sam1.0';
bound = dlmread([input_path, 'boundaryCondition.dat']);
coord = dlmread([input_path, 'elementCoordinates.dat']);
unit_topology_table = dlmread([input_path, 'elementTopology.dat']);
P = dlmread([input_path, 'forceCondition.dat']);
materials = dlmread([input_path, 'materials.dat']);

% Step 2： 所有单元 B，D矩阵的计算

% Step 3： 整体刚度矩阵集成,输入单元劲度矩阵，相应单元的单元定位向量,未计算完的K

% Step 4： 根据约束对整体刚度矩阵进行处理

% Step 5： 求解结点平衡方程

% Step 6： 求解单元节点位移

% Step 7： 求解单元应变与单元应力