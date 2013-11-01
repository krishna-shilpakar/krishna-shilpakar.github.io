require 'rubygems'
require 'xmpp4r'
require 'xmpp4r/httpbinding/client'

Jabber::debug=true

client = Jabber::HTTPBinding::Client.new("krishna@localhost/myresource")
client.connect("http://localhost:5280/http-bind")

client.auth('mysecretpassword')
client.send(Presence.new.set_type(:available))
