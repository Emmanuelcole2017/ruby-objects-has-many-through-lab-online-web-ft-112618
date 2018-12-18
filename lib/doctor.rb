class Doctor
  attr_accessor :name, :appointments, :patients

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @patients = []
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    docInstance = self
    appointInstance = Appointment.new(date, patient, docInstance)
    @patients << patient
    @appointments << appointInstance
    appointInstance
  end

end
