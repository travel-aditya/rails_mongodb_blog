class Message
  include Mongoid::Document
  field :to
  field :from
  field :subject
  field :body
  embeds_many :user
end