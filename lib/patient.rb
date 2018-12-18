class Patient
  attr_accessor :name, :appointments
  @@all = []
  
  def initialize(name)
    @@all << self
    @name = name
    @appointments = []
  end

  def new_appointment(doctor, date)
    patientInstance = self
    appointInstance = Appointment.new(date, patientInstance, doctor)
    @appointments << appointInstance
    appointInstance
  end

  def self.all
    @@all
  end

end
