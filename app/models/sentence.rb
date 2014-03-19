class Sentence < ActiveRecord::Base
  validates_presence_of :text, :excuse
end
