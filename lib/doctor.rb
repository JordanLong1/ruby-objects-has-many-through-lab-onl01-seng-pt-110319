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

    def appointments
        # binding.pry
        Appointment.all.select {|a| a.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(patient, date, self)
    end

    def patients
        appointments.map { |a| a.patient}
    end


    
end