class Patient
    
    attr_reader :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end 
    
    def new_appointment(date, doctor)
        new_appointment = Appointment.new(date, self, doctor)
        new_appointment
    end 
    
    def self.all
        @@all
    end 
    
    def appointments
        Appointment.all.select { |appointment| appointment.patient == self }
    end 
    
    def doctors
        appointments.collect { |appointment| appointment.doctor }.uniq
    end 
    
end 
