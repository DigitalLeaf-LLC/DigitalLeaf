module AwsModule
  require 'time'

  #initialize DynamoDB client
  @@dynamo_db ||= Aws::DynamoDB::Client.new()

 #init method (unused)
 def self.init
    @@dynamo_db = false
    @@dynamo_db = AWS::DynamoDB::Client.new()
  end

 #TEST
 #the method that saves to aws database
 def self.save_records_to_db(params)
   return if !@@dynamo_db

   #set the table name, hash_key and range_key from the AmazonDB
#   table = @@dynamo_db.table("TestRecords")

    entry = {
      'table_name': 'TestRecords',
      'item': params
    }

    result = @@dynamo_db.put_item(entry)
  end
end
