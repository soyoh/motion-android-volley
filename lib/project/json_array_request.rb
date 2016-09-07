module MotionVolley

  class JsonArrayRequest

    def self.build(url, success_listener, error_listener)
      Com::Android::Volley::Toolbox::JsonArrayRequest.new(url, success_listener, error_listener)
    end

  end

end
