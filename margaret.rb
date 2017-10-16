require 'YAML'

class Margaret
    
    def initialize
        @string_margaret = ARGV
        
    end


    # converting yaml data to hash
    # f is each line in file
    def serialize
        margaret_file = File.open("messages.yaml", "a+")
            margaret_file.puts YAML::dump(@string_margaret)
    end

    def deserialize
        margaret_file = File.open("messages.yaml", "w")
        margaret_file.puts YAML::load("messages.yaml")
    end

end

margaret_object = Margaret.new
puts margaret_object.serialize
# puts "#{margaret_object.deserialize}"
