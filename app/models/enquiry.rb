class Enquiry < ApplicationRecord

  validates_presence_of :name

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
    presence: true,
    length: {maximum: 255},
    format: {with:  VALID_EMAIL_REGEX}

  after_create_commit :send_email

  private

  def send_email
    # EnquiriesMailer.send_enquiry(self).deliver_later
  end

end