class Link < ActiveRecord::Base
  belongs_to :target
  has_one :target
end
