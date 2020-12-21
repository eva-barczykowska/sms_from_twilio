# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'

# TODO remove hardcoding in the 2 below lines
account_sid = 'AC4847f9ef53169ffe5d22949105436e36'
auth_token = '749552fdb07f8b111b404a39fc94a666'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '[+][1]2059843305' # Your Twilio number
to = '[+][420]737085806' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hurray, holidays!"
)
