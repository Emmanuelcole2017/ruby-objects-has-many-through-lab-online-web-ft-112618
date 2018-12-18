class Doctor
  attr_accessor :name, :appointments

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    docInstance = self
    appointInstance = Appointment.new(date, patient, docInstance)
    @appointments << appointInstance
  end

end
