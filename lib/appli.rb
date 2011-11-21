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
      unless @platform
        if ENV[ "PLATFORM" ]
          @platform = ENV[ "PLATFORM" ].to_s.inquiry
        else
          files = Dir.glob( "{mobage,gree,mixi}" )
          @platform = files.first.to_s.inquiry
        end
      end
      @platform
    end
  end
end
