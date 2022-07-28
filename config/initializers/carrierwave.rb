if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => Rails.application.credentials.dig(:aws, :access_key_id), 
      :aws_secret_access_key  => Rails.application.credentials.dig(:aws, :secret_access_key),
      :region                 => 'us-east-1',
    }
    config.fog_directory  = 'alvaroveliz-photoapp'
    config.fog_public     = true
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  end
end