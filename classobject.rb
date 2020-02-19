# class Calculator
#     def penjumlahan(a,b)
#         a + b
#     end

#     def pengurangan(a,b)
#         a - b
#     end
# end

# calc = Calculator.new
# hasil_penjumlahan = calc.penjumlahan(10,5)
# puts hasil_penjumlahan

# hasil_pengurangan = calc.pengurangan(10,5)
# puts hasil_pengurangan


# # OOP - Class (Normal Function)
# class Calculator
#     def penjumlahan(a, b)
#         a + b
#     end

#     def pengurangan(a)
#         a - 10
#     end
# end

# calc = Calculator.new
# hasil_plus = calc.penjumlahan(10, 5) # Taking function from class
# puts hasil_plus

# hasil_minus = calc.pengurangan(11)
# puts hasil_minus


# OOP - Constructor
# class CalculatorKool
#     def initialize(a, b) # Method initialize harus ada
#         @parameter_a = a # @ adalah variable umum pada class
#         @parameter_b = b
#         @lokal = a + b
#     end
    
#     def penjumlahan
#         @parameter_a + @parameter_b
#     end

#     def perkalian
#         @parameter_a * @parameter_b
#     end
# end

# calc = CalculatorKool.new(10,5) # Giving parameter as default variable
# hasil_plus = calc.penjumlahan
# puts hasil_plus
# hasil_kali = calc.perkalian
# puts hasil_kali


# # OOP - Getter and setter
# class Print
#     def initialize(text)
#         @text = text
#     end

#     def print
#         puts @text
#     end
# end

# printer = Print.new('Saya sedang belajar getter setter')
# printer.print

# printer = Print.new('Saya sedang mendalami getter setter')
# printer.print
# puts "=============="

# # class Print
# #     def initialize(text)
# #         @text = text
# #     end
# # end

# class Print
#     attr_accessor :text
#     attr_writer   :text #getter
#     attr_reader   :text #setter

#     def initialize(text)
#         @teks = text
#     end

#     # setter
#     def text=(text)
#         @text = text
#     end

#     # getter
#     def text
#         @text
#     end

#     def print
#         puts "Mencetak : #{@teks}"
#     end
# end

# printer = Print.new("Saya sedang belajar Ruby!")
# printer.print
# printer.text = "Setter Getter"
# printer.print
# printer.text = "Text"
# puts printer.text
# puts "===================================="



# class Print
#     # attr_accessor :text
#     # attr_writer   :text #getter
#     attr_reader   :text #setter

#     def initialize(text)
#         @teks = text
#     end

#     # setter
#     def text=(text)
#         @text = text.upcase
#     end

#     # getter
#     # def text
#     #     @text
#     # end

#     def print
#         puts "Mencetak : #{@teks}"
#     end
# end

# printer = Print.new("Saya sedang belajar Ruby!")
# printer.print
# printer.text = "Setter Getter"
# printer.print
# printer.text = "Text"
# puts printer.text

class MesinPencetak
    attr_reader :text, :duration

    def initialize(text,duration)
        @text = text
        @duration = duration
    end

    def cetak
        puts "========READER========="
        puts "Hari ini saya belajar method #{@text}"
        puts "Waktu yang diperlukan untuk belajarnya adalah #{@duration}"
    end
end

mesinku = MesinPencetak.new("getter", "sebentar")
mesinku.cetak
puts mesinku.text
puts mesinku.duration


class MesinPencetak
    attr_writer :text

    def initialize(text)
        @text = text
    end

    def cetak
        puts "========WRITER========="
        puts "Hari ini saya belajar method #{@text}"
    end
end

mesinku = MesinPencetak.new("getter")
mesinku.text = "setter"
puts mesinku.text
puts mesinku.cetak


class MesinPencetak
    attr_reader :text, :duration
    # FUNGSINYA UNTUK MENGUBAH ATTRIBUT
    attr_writer :text, :duration
    # FUNGSINYA UNTUK MENGAMBIL ATTRIBUT ATAU INSTANT VARIABLE YANG DIINGINKAN
    def initialize(text, duration)
        @text = text
        @duration = duration
    end
    def cetak
        puts "========GET&SET========="
        puts "Hari ini belajar method #{@text}"
        puts "Waktu yang diperlukan untuk belajarnya adalah #{@duration}"
    end
end

mesinku = MesinPencetak.new("getter", "sebentar")
mesinku.text = "setter"
mesinku.duration = "semenit"
mesinku.cetak


class MesinPencetak
    attr_accessor :text, :duration
    def initialize(text, duration)
        @text = text
        @duration = duration
    end
    def cetak
        puts ""
        puts "========ACCESSOR========="
        puts "INI GETTER DAN SETTER"
        puts "Hari ini belajar method #{@text}"
        puts "Waktu yang diperlukan untuk belajarnya adalah #{@duration}"
    end
end

mesinku = MesinPencetak.new("getter", "sebentar")
mesinku.text = "setter"
mesinku.duration = "semenit"
mesinku.cetak


# Private Method
class MesinPencetak
    attr_accessor :text
    def initialize(text)
        @text = text
    end

    def cetak(format)
        cekformat(@text, format)
    end

    private
    def cekformat(text, format)
        if format == :plain
            text
        elsif format == :blink
            "*** #{text} ***"
        end
    end
end

mesinku = MesinPencetak.new('Belajar Ruby on Rails')
puts mesinku.cetak(:blink)
puts mesinku.cetak(:plain)
# puts mesinku.cekformat("tes", :blink)

puts "=======INHERITANCE======="

class Siswa
    attr_accessor :nama, :materi, :nilai
    def initialize(nama, materi, nilai)
        @nama = nama
        @materi = materi
        @nilai = nilai
    end

    def belajar
        puts "Siswa #{@nama} sedang belajar #{@materi}"
    end

    def ulangan
        puts "Siswa #{@nama} mendapatkan nilai #{@nilai} untuk materi #{@materi}"
    end
end

class Kelas12 < Siswa
    attr_accessor :mapel, :nilai_un
    def initialize(mapel, nilai_un)
        @mapel = mapel
        @nilai_un = nilai_un
    end

    def unbk
        puts "Siswa dengan nama #{@nama} mengerjakan UN mapel #{@mapel} dengan nilai #{@nilai_un}"
    end
end

sutera = Siswa.new('Sutera', 'Ruby', 10)
sutera.belajar
sutera.ulangan

mutia = Kelas12.new('Matematika', 10)
mutia.nama = "Mutia"
mutia.materi = "Ruby on Rails"
mutia.nilai = 9
mutia.belajar
mutia.ulangan
mutia.unbk

puts "======OVERRIDE======"

class Siswa
    attr_accessor :nama, :materi, :nilai
    def initialize(nama, materi, nilai)
        @nama = nama
        @materi = materi
        @nilai = nilai
    end

    def belajar
        puts "Siswa #{@nama} sedang belajar #{@materi}"
    end

    def ulangan
        puts "Siswa #{@nama} mendapatkan nilai #{@nilai} untuk materi #{@materi}"
    end
end

class Kelas12 < Siswa
    attr_accessor :mapel, :nilai_un
    def initialize(mapel, nilai_un)
        @mapel = mapel
        @nilai_un = nilai_un
    end

    def unbk
        puts "Siswa dengan nama #{@nama} mengerjakan UN mapel #{@mapel} dengan nilai #{@nilai_un}"
    end

    def belajar
        puts "Siswa #{@nama} belajar #{@materi} dengan serius."
    end
end

sutera = Siswa.new('Sutera', 'Ruby', 10)
sutera.belajar
sutera.ulangan

mutia = Kelas12.new('Matematika', 10)
mutia.nama = "Mutia"
mutia.materi = "Ruby on Rails"
mutia.nilai = 9
# mutia.belajar
# mutia.ulangan
mutia.belajar


# Penerapan Kelas Turunan
class ApiConnection
    attr_accessor :url, :name
    def initialize(url, name)
        @url = url
        @name = name
    end

    def connect
        @connect = true # Logika program disini
    end

    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end
end

class FacebookConnection < ApiConnection
    def version
        
    end
    def status
        :connected
    end
end

facebook_connection = FacebookConnection.new('https://facebook.com', 'facebook')

status = facebook_connection.status
version = facebook_connection.version

puts status
puts version

# SUPER METHOD
puts "=======SUPER METHOD======"
class ApiConnection
    attr_accessor :url, :name
    def initialize(url, name)
        @url = url
        @name = name
    end

    def connect
        puts "askdjaksd"
        @connect = true # Logika program disini

    end

    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end
end

class FacebookConnection < ApiConnection
    def version
        
    end
    def connect
        super
        puts "connection established"
    end
    def status
        super
    end
    def status
        :connected
    end
end

facebook_connection = FacebookConnection.new('https://facebook.com', 'facebook')

status = facebook_connection.status
version = facebook_connection.version

puts status
facebook_connection.connect
puts version


puts "=======Class SELF======"
class ApiConnection
    attr_accessor :url, :name
    def initialize(url, name)
        @url = url
        @name = name
    end

    def connect
        puts "askdjaksd"
        @connect = true # Logika program disini

    end

    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end
end

class FacebookConnection < ApiConnection
    class << self
        def version
            
        end
        def connect
            super
            puts "connection established"
        end
        def status
            super
        end
        def status
            :connected
        end
    end
end

facebook_connection = FacebookConnection.new('https://facebook.com', 'facebook')

status = facebook_connection.status
version = facebook_connection.version

facebook_connection = FacebookConnection.new('https://facebook.com', 'facebook')
puts facebook_connection.version
puts facebook_connection.status
# puts FacebookConnection.connect
puts version