class Post < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 5} # 至少5个字符
  validates :body, presence: true # 文章内容不能为空

  belongs_to :user
end
