class Comment < ActiveRecord::Base
belongs_to :article
validates_presence_of :body, message: "Please enter a body"
end
