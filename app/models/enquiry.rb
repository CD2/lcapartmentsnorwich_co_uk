class Enquiry < ApplicationRecord

  belongs_to :apartment, optional: :true
  validates :name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
    presence: true,
    length: {maximum: 255},
    format: {with:  VALID_EMAIL_REGEX}

  after_create_commit :send_email

  def apartment
    if self.apartment_id == -1
      OtherApartment.new
    else
      super
    end
  end

  private

  def send_email
    EnquiriesMailer.new_enquiry(self).deliver_now
  end

end

class OtherApartment
  def name
    'Other'
  end
end
