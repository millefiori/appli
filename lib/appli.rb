require "appli/version"

module Appli
  class << self
    def name
      a = ENV[ "APP_NAME" ].to_s.dup
      a.gsub!( %r"[-_]#{platform}", "" )
      a.gsub!( %r"[-_]#{Rails.env}", "" )
      a.inquiry
    end

    def platform
      ENV[ "PLATFORM" ].to_s.inquiry
    end
  end
end
