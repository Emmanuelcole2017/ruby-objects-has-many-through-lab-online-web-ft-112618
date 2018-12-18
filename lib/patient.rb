class Patient
  attr_accessor :name, :appointments, :doctors
  @@all = []

  def initialize(name)
    @@all << self
    @name = name
    @doctors = []
    @appointments = []
  end

  def new_appointment(doctor, date)
    patientInstance = self
    appointInstance = Appointment.new(date, patientInstance, doctor)
    @doctors << doctor
    @appointments << appointInstance
    appointInstance
  end

  def self.all
    @@all
  end

end
