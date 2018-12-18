class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def new_appointment(doctor, date)
    patientInstance = self
    appointInstance = Appointment.new(date, patientInstance, doctor)
    @appointments << appointInstance
    appointInstance
  end
end
