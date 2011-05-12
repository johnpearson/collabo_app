class Project < ActiveRecord::Base
  attr_accessible :name, :content, :inspire_file_name
  
  # Paperclip method for attaching the file to the project
  has_attached_file :inspire
  
  # Projects belong to a user
  belongs_to :user
  
  # Validations
  validates :content, :presence => true, :length => { :maximum => 1000 }
  validates :user_id, :presence => true
end
