module MotionVolley

  class JsonObjectRequest

    class << self

      def build(method, url, success_listener, error_listener)
        _method = MotionVolley.convert_method(method)
        Com::Android::Volley::Toolbox::JsonObjectRequest.new(_method, url, nil, success_listener, error_listener)
      end

    end

  end

end
