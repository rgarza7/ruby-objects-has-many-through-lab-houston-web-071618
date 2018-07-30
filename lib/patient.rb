class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    new_appt = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |new_appt|
    new_appt.patient == self
    end
  end

  def doctors
    appointments.map do |new_appt|
      new_appt.doctor
    end
  end

end
