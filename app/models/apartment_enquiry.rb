class ApartmentEnquiry < ApplicationRecord

  belongs_to :apartment

  after_create_commit :send_email


  private

  def send_email
    #SEND THE EMAIL
  end

end