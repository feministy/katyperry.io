class Sentence < ActiveRecord::Base
  belongs_to :album

  validates_presence_of :text
end
