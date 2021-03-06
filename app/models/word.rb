class Word < ActiveRecord::Base
  before_save :lowercase

  validates_presence_of :text

  def lowercase
    text.downcase
  end
end
