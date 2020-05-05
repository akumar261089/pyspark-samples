import findspark
findspark.init()

from pyspark import SparkConf
from pyspark import SparkContext
conf = SparkConf()
conf.setMaster('yarn')
conf.setAppName('testing')
sc = SparkContext(conf=conf) 
rdd = sc.parallelize([1,2,3])
print(sc.master)
print(rdd.count())