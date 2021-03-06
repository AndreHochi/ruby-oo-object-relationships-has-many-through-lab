require 'pry'
class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end


    def patients
        return_array = []
        appointments_object = appointments
        appointments_object.each do |appointment|
            return_array.push(appointment.patient)
        end
        return_array
    end

end
