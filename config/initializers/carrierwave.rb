unless Rails.env.development?
    CarrierWave.configure do |config|
        config.fog_credentials = {
            :provider               => 'AWS',
            :aws_access_key_id      => ENV['S3_ACCESS_KEY'],
            :aws_secret_access_key  => ENV['S3_SECRET_KEY'],
            region: 'eu-west-1'
        }
        config.fog_directory  = ENV['S3_BUCKET']
        config.cache_dir = "#{Rails.root}/tmp/uploads"
        config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
    end
end
