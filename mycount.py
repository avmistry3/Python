from pyspark.sql import SparkSession

my_spark = SparkSession \
    .builder \
    .appName("Poonam's example") \
    .enableHiveSupport() \
    .getOrCreate()

myInputFileName = 'gs://dataengg2023dec19/inputdata/wordcount_inputdata.txt'
myDF = my_spark.read(myInputFileName)

myDF.createOrReplaceTempView("myView")
mywords = spark.sql("SELECT * FROM myView")
print(mywords.show())