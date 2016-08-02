class EnquiriesMailer < ApplicationMailer

  def new_enquiry enquiry
    @enquiry = enquiry
    # mail to: "emily@lcapartmentsnorwich.co.uk", subject: "New Enquiry"
    mail to: "web@cd2solutions.co.uk", subject: "New Enquiry"
  end

end
