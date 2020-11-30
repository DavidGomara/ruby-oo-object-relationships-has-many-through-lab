class Doctor
    
    attr_reader :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end 
    
    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self }
    end 
    
    def new_appointment(date, patient)
        new_appointment = Appointment.new(date, patient, self)
        new_appointment
    end 
    
    def patients
        appointments.collect { |appointment| appointment.patient }.uniq
    end 
    
    def self.all
        @@all
    end 
    
end 
