#test the git hahah 
# markSearch
the search engine--markSearch，use the threadpool to get URLs.There are three modules:
the crawler,search and webpage process;To get the precise result,we create training 
set by TF-IDF algorithm.
#markSearch是一款简易搜索引擎，在这其中包括三个部分：
##查询部分；
##网络爬虫；
##网页预处理；

#一、查询部分
查询部分：查询部分主要是对用户想要查询的词进行收集；
#二、网络爬虫
网络爬虫：利用多线程构建线程池，实现“生产者-消费者”模型来构建URL缓冲区利用Pthread库中的
pthread_mutex_t和pthread_cond_t实现互斥量和条件变量进保证线程互斥和同步；
#三、网页预处理
网页预处理：对爬虫部分获取到的网页信息进行处理；提取出其中的相对网址和绝对网址并继续存放到
URL缓冲区以继续查找；之后对网页正文进行处理，对于用户想要搜索的词，利用TF-IDF算法和训练集结合
查找出该词的重要性，只要重要的词的网页才被保存下来；

除了上述三个部分，为了获取更好的查找效果，我们构建了训练集；即从种子网页开始，查询所有的跳转
网页和子网页收集整理网页正文中所有词并记录词出现的次数：为了TF-IDF的使用。


#使用方法：
1.make；

2../main;

3.如果要去除可执行目标文件利用命令clean；


#creating a new branch in and simple
