# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'

account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']

client = Twilio::REST::Client.new(account_sid, auth_token)

from = '[+][1]2059843305' # Your Twilio number
to = '[+][420]737085806' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hurray, holidays!"
)
