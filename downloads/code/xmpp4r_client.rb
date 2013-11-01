  require 'rubygems'
  require 'xmpp4r'

  Jabber::debug=true
  jid = Jabber::JID.new("krishna@localhost")
  client = Jabber::Client.new(jid)
  client.connect

  client.auth('kkkkkk')
  client.send(Presence.new.set_type(:available))