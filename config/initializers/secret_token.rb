# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'
def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and storetoken = SecureRandom.hex(64)
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Blog::Application.config.secret_key_base = secure_token


#Blog::Application.config.secret_key_base = '28827a69ec85e8f31fc225326ab053de24a7071eca5d32657d02415600ff8e204260034a4c82f42395b3b76e26947ef818e534ceb33c84e21080c82bad0e821f'
