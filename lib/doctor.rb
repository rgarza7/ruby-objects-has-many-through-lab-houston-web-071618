require 'pry'

class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_appt = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |new_appt|
    new_appt.doctor == self
    end
  end

  def patients
    appointments.map do |new_appt|
      new_appt.patient
  end
end



    # binding.pry


end
