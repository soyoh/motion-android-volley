module MotionVolley

  class JsonArrayRequest

    class << self

      def build(url, success_listener, error_listener)
        Com::Android::Volley::Toolbox::JsonArrayRequest.new(url, success_listener, error_listener)
      end

    end

  end

end
