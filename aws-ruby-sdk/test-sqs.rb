require 'aws-sdk-core'
require 'aws-sdk-sqs'

sleep(2) # Give the moto server time to start

client = Aws::SQS::Client.new(
  region: 'us-east-1',
  endpoint: 'http://moto:5001',
  access_key_id: 'fake',
  secret_access_key: 'fake'
)


queue = client.create_queue(queue_name: 'default_failures')
puts queue.queue_url
client.delete_queue(queue_url: queue.queue_url)
puts 'DONE'
