require "cipher"

class CryptoController < ApplicationController

  def query
    # render the form
  end

  def decrypt
    @raw_message = params[:encrypted_message]
    cipher = Cipher.new
    @choices = cipher.decrypt_message(@raw_message)
  end

end
