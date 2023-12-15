class Request < ApplicationRecord
  belongs_to :subject
  belongs_to :lecturer
end
