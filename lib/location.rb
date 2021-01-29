class Location
  attr_accessor :name, :wind_speed, :temp, :feels_like, :cloud_cover

  def initialize(hash)
    # call attr_accessor in here
      hash.each do |key, value|
          self.send("#{key}=", value) if self.respond_to?("#{key}=")
      end
      # binding.pry
  end

  # way to check if we have already requested that location


end
