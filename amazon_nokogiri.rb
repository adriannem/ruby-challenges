require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.amazon.com/b/ref=au_as_ufil?ie=UTF8&spfre=1&node=15721811'))

puts doc.css('h3.newaps').text