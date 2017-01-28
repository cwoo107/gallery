class Picture < ActiveRecord::Base
	has_attached_file :image,
	 :styles => {
   	 :thumb => "500x500#" },
  	 :convert_options => {
     :thumb => "-quality 75 -strip" }
	do_not_validate_attachment_file_type :image


end
