class Message < ApplicationRecord
  belongs_to :user

  def self.like(content)
    content.nil? ? [] : where(['content LIKE ?', "%#{content}%"])
  end
end
