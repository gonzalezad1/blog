class Article < ActiveRecord::Base

 acts_as_taggable # Alias for acts_as_taggable_on :tags
    acts_as_taggable_on :tags
has_many :comments, dependent: :destroy
    has_many :tags, through: :tag_list

validates_presence_of :title, :body , message: "Please enter a title and a body"
validates :title, presence: true, length: {maximum: 75}


def self.articleview (article)
article = article+1
end

def self.search(search) 
 where("title ILIKE ?","%#{search}%")
 
  
end
def self.search1(search) 
 where("tag_list ILIKE ?","%#{search}%")
 
  
end
end
