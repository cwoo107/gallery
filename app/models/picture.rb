class Picture < ActiveRecord::Base
	has_attached_file :image,
	 :styles => {
   	 :thumb => "500x500#" },
  	 :convert_options => {
     :thumb => "-quality 75 -strip" },
     storage: => :s3,
  	s3_credentials: {
    bucket: => ENV['AWS_S3_BUCKET'],
    access_key_id: =>ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: =>ENV['AWS_SECRET_ACCESS_KEY'],
    s3_region: =>ENV['AWS_REGION']
	}
	do_not_validate_attachment_file_type :image


end
