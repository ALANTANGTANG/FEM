有限元计算程序
--------------

本程序是基于**弹性力学与有限元**课程的要求，实现有限元程序的计算部分。本项目使用MATLAB与C混合编程，以期达到运行效率与开发效率兼顾的目的。项目成员如下：
- 张泽凡
- 王政荣
- 王艺杰
- 张家豪
- 黄鹤飞
- 梅杰

## 工作分解结构图

<div align="center">
    <img src="https://github.com/MajorChina/FEM/blob/master/img/WBS.jpg">
</div>

## 任务安排及进度

<div align="center">
    <img src="https://github.com/MajorChina/FEM/blob/master/img/甘特图.png">
</div>

## 数据流程图

<div align="center">
    <img src="https://github.com/MajorChina/FEM/blob/master/img/数据流程图-0.1.jpg">
</div>

## 编程规范

### 用到的变量及其规定

结点个数

    n

单元个数

    m

全部结点坐标

    all_element_X  /  n * 1
    all_element_Y  /  n * 1

单元拓扑表

    unit_topology_table  / m * 3  
    所在行数即为单元的编号

单个单元的坐标使用两个列向量，依次为 i j m

    double element_X  / 三行，一列 3 * 1  
    double element_Y  / 三行，一列 3 * 1

单元刚度阵k

    element_k  /  6 * 6

整体刚度阵K的储存

    K 为一维数组 长度未知 下三角矩阵的值
    K_info 储存主对角元在K中的位置 1 * n

B矩阵

    double matrixB  / 3 * 6的矩阵

整体的位移

    whole_displaycement  /  2n * 1


### 用到的函数文件及其规定
    

### 文件命名

开头小写、驼峰命名法

    unitArea.m
    unitStiffnessMatrix.m

### 函数命名

同文件名

### 变量命名

变量 下划线链接，小写

    node_displacement

常量 全部大写

    E



License
-------
Copyright 2016

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; If not, see 
    
    http://www.gnu.org/licenses