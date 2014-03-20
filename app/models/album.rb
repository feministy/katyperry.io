class Album < ActiveRecord::Base
  has_many :sentences

  validates_presence_of :title
end
