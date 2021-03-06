class AppointmentHistory < ActiveRecord::Base
  attr_accessible :appointment_id, :appointment_time, :customer_id, :employee_id, :note, :state, :created_by
  belongs_to :appointment
  belongs_to :user, foreign_key: :created_by


  # this is an hack and I know it. This needs to 
  # be done more eloquently.
  def status

  	case state
  		when Appointment::States[:pending_stylist_approval]
  			'Pending Stylist Approval'
  		when Appointment::States[:pending_client_approval]
  			'Pending Client Approval'
  		when Appointment::States[:confirmed]
  			'Confirmed'
  		when Appointment::States[:canceled]
  			'Canceled'
  		else
  			''
  	end

  end

end
