require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIARRS33554RADE7Y4W',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'rails-pictgram'
    config.cache_storage = :fog
   
  
end