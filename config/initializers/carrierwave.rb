CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIQFUGJ7GFE2YRQKA',                        # required
    :aws_secret_access_key  => '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',                        # required
  }
  config.fog_directory  = 'yakdemo'                          # required
end