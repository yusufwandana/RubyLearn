# arr = ['Cupsky',2,:testing,4,5]
# arr[0] = 'test'
# puts arr

a = "a.b.c.d.e.f.g.h.d.r.a.c.b.4.2.f,a,e,".gsub('.', ',')
b = a.split(',')
b.delete_at(2)
# b.delete_if{|item| item > 2}
# print b

hash = {nama: 'Yusuf', rayon: 'Cic4', rombel: 'RPLXII'}
puts cek = Hash.new('No')
puts hash.fetch(:objek, '')
puts hash