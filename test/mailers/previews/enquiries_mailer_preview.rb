# Preview all emails at http://localhost:3000/rails/mailers/enquiries_mailer
class EnquiriesMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/enquiries_mailer/send_email
  def send_email
    EnquiriesMailer.send_email
  end

end
