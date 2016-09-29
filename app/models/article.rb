class Article < ActiveRecord::Base

 acts_as_taggable # Alias for acts_as_taggable_on :tags
    acts_as_taggable_on :tags
has_many :comments
    has_many :tags, through: :tag_list


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
