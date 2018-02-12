class Inquiry
  include ActiveModel::Model

  attr_accessor :name, :email, :subject, :message

  # validates :name, presence: true
  # validates :email, presence: true
  # validates :message, presence: true

  validates :name, :presence => {:message => '名前を入力してください'}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :format => {with: VALID_EMAIL_REGEX, :message => 'メールアドレスを入力してください'}
  validates :message, :presence => {:message => 'お問合せ内容を入力してください'}
end