class Patient
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        return_array = []
        appointments_object = appointments
        appointments_object.each do |appointment|
            return_array.push(appointment.doctor)
        end
        return_array
    end

end


