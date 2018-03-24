class InquiryMailer < ActionMailer::Base
  default from: "no-reply@anabatravel.com"   # 送信元アドレス
  default to: "jpclass.yung@gmail.com"     # 送信先アドレス

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end
end