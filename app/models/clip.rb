class Clip < ActiveRecord::Base
  validates_presence_of :selection
  
  def self.find_latest
    find(:all, :order => "created_at DESC")
  end
  
end