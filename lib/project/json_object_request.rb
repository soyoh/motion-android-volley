module MotionVolley

  class JsonObjectRequest

    def self.build(method, url, success_listener, error_listener)
      Com::Android::Volley::Toolbox::JsonObjectRequest.new(method, url, nil, success_listener, error_listener)
    end

  end

end
