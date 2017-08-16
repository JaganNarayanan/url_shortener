require 'uri'

class Url < ActiveRecord::Base
  validates :long_url, presence: true, uniqueness: true
  validates :long_url, format: URI::regexp(%w(http https))
  validates :short_url, presence: true
  # # before_create :shorten
  #
  # def create (long_url, short_url)
  #   self.long_url = long_url
  #   self.short_url = short_url
  # end

  def self.retrieve_short_url(long_url)
    url = Url.find_by(long_url: long_url)

      # short_url = SecureRandom.base64[0..8]
      return url.short_url   if url.present?
    # else
    #   return nil
    # end
  end

end
