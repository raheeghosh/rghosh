class Comment < ActiveRecord::Base
  
  validates_presence_of :content, :name, :email
  belongs_to :commentable, :polymorphic => true
  
  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([a-z0-9.-]+\.)+(com|edu|org|net|gov|mil|biz|info))$/i, :message => "is not a valid format", :allow_blank => true
  
  
end
