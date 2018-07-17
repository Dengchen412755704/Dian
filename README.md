Dian团队暑期实习生第一周——work1
=======
1.factorial.sh          #用递归的方法计算n！<br>
2.self_compression.sh #自动根据后缀名解压文件<br>
3.file_size.sh          #获取文件夹最大的前n个文件<br>
test.tar.gz        test.war        test.zip 用于解压的对象

文件1——1.factorial.sh
----
* 文件结构：

            若输入为空
                   用户反馈：提醒用法及功能
            有输入：
                   调用函数fac计算
                   输出计算结果
                   
            函数fac：先判断输入值是否  
                    <=1  
                         n!=1
                    否则
                        调用fac递归计算                         
 ------     
 * 运行结果：
 ![](https://github.com/Dengchen412755704/Dian/blob/master/picture/1.png)
 
 
 文件2——2.self_compression.sh
 -------
 * 文件结构：

           若输入为空
                   用户反馈：提醒用法及功能
            若输入为--list
                   输出支持压缩类型
                   
            其他输入情况：
               用case语句匹配
                      并执行相应的操作
               否则
                      输出不支持该类型                           
 ------     
 * 运行结果：
 ![](https://github.com/Dengchen412755704/Dian/blob/master/picture/2.png)
 
 
 文件3——3.file_size.sh 
 -------
* 文件结构：

            若输入为空
                   用户反馈：提醒用法及功能
            若输入路径-第四个参数为空
                   输出默认路径的文件
                   
            其他输入情况（四个参数都按要求输入）
                    输出指定路径的前n个最大的文件                     
 ------     
 * 运行结果：
 ![](https://github.com/Dengchen412755704/Dian/blob/master/picture/3.png)
 
 
参考资料
======
编辑readme.md文件：https://blog.csdn.net/ljc_563812704/article/details/53464039
