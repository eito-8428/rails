require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage :fog
  config.fog_provider = 'fog/aws'
  config.fog_directory  = ENV['rails-pictgram']
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AKIARRS33554RADE7Y4W'],
    aws_secret_access_key: ENV['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'],
    region: ENV['ap-northeast-1'],
    path_style: true
  }
end
