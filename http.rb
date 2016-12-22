# require 'net/http'

# url = URI.parse('http://www.rubyinside.com/test.txt')

# Net::HTTP.start(url.host, url.port) do |http|
#   req = Net::HTTP::Get.new(url.path)
#   puts http.request(req).body
# end


# require 'net/http'

# url = URI.parse('http://www.rubyinside.com/test.txt')
# response = Net::HTTP.get_response(url)
# puts response.body


# require 'net/http'

# def get_web_document(url)
#   uri = URI.parse(url)
#   response = Net::HTTP.get_response(uri)

#   case response
#   when Net::HTTPSuccess
#     return response.body
#   when Net::HTTPRedirection
#     return get_web_document(response['Location'])
#   else
#     return nil
#   end
# end

# puts get_web_document('http://www.rubyinside.com/test.txt')
# puts get_web_document('http://www.rubyinside.com/non-existent')
# puts get_web_document('http://www.rubyinside.com/redirect-test')


# require 'net/http'

# url = URI.parse('http://browserspy.dk/password-ok.php')

# Net::HTTP.start(url.host, url.port) do |http|
#   req = Net::HTTP::Get.new(url.path)
#   req.basic_auth('test', 'test')
#   puts http.request(req).body
# end


# require 'net/http'

# url = URI.parse('http://www.rubyinside.com/test.cgi')

# response = Net::HTTP.post_form(url,{'name' => 'David', 'age' => '24'})
# puts response.body


# require 'net/http'
# url = URI.parse('http://www.rubyinside.com/test.cgi')
# Net::HTTP.start(url.host, url.port) do |http|
# req = Net::HTTP::Post.new(url.path)
# req.set_form_data({ 'name' => 'David', 'age' => '24' })
# puts http.request(req).body
# end


# require 'net/http'

# http_class = ARGV.first ? Net::HTTP::Proxy(ARGV[0], ARGV[1]) : Net::HTTP
# url = URI.parse('http://www.rubyinside.com/test.txt')

# response = http_class.get_response(url)
# puts response.body


# require 'net/http'
# require 'net/https'

# url = URI.parse('https://example.com/')

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true if url.scheme == 'https'

# request = Net::HTTP::Post.new(url.path)
# request.set_form_data({ 'credit_card_number' => '1234123412341234' })
# puts http.request(request).body


# require 'open-uri'

# open('http://www.rubyinside.com/test.txt') do |f|
#   puts f.readlines.join
# end


# require 'open-uri'

# f = open('http://www.rubyinside.com/test.txt')

# puts f.content_type
# puts f.charset
# puts f.last_modified

# require 'rubygems'
# require 'markaby'

# m = Markaby::Builder.new

# m.html do
#   head { title 'This is the title' }

#   body do
#     h1 'Hello world'
#     h2 'Sub-heading'
#     p %q{This is a pile of stuff showing off Markaby's features}
#     h2 'Another sub-heading'
#     p 'Markaby is good at:'
#     ul do
#       li 'Generating HTML from Ruby'
#       li 'Keeping HTML structured'
#       li 'Lots more..'
#     end
#   end
# end

#puts m


# require 'rubygems'
# require 'redcloth'

# text = %q{h1. This is a heading.

# This is the first paragraph.

# This is the second paragraph.

# h1. Another heading

# h2. A second level heading

# Another paragraph}

# document = RedCloth.new(text)
# puts document.to_html


# require 'rubygems'
# require 'hpricot'

# html = <<END_OF_HTML
# <html>
# <head>
#   <title>This is the page title</title>
# </head>

# <body>
#   <h1>Big heading!</h1>
#   <p>A paragraph of text.</p>
#   <ul><li>Item 1 in a list</li><li>Item 2</li><li class="highlighted">Item
# 3</li></ul>
# </body>
# </html>
# END_OF_HTML

# doc = Hpricot(html)
# puts doc.search("h1").first.inner_html


# require 'rubygems'
# require 'hpricot'
# require 'open-uri'
# doc = Hpricot(open('http://www.rubyinside.com/test.html'))
# puts doc.search("h1").first.inner_html


# require 'rexml/document'

# xml = <<END_XML
# <people>
#   <person>
#     <name>Peter Cooper</name>
#     <gender>Male</gender>
#   </person>
#   <person>
#     <name>Fred Bloggs</name>
#     <gender>Male</gender>
#   </person>
# </people>
# END_XML

# tree = REXML::Document.new(xml)

# tree.elements.each("people/person") do |person|
#   puts person.get_elements("name").first
# end