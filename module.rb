module NamaModule
    XXX = 200

    LOKAL = "Lokal variabel"

    def method
        puts "Method dari dalam konstan."
    end

    module A
        XXX = 300
    end
end

puts NamaModule::XXX
puts NamaModule::LOKAL
puts NamaModule::A::XXX

module Kerenz
    class ApiConnection
        def connect
            puts "koneksi dari Kerenz::ApiConnection"
        end
    end
end

module Kool
    class ApiConnection
        def connect
            puts "koneksi dari Kool::ApiConnection"
        end
    end
end

con = Kerenz::ApiConnection.new
con.connect

con = Kool::ApiConnection.new
con.connect