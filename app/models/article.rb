class Article
  include Mongoid::Document
  field :name
  field :content
  field :published_on, :type => Date
  field :author
end
