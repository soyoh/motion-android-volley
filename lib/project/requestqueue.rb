module MotionVolley

  class RequestQueue
    
      def self.build(current_activity)
        queue = Com::Android::Volley::Toolbox::Volley.newRequestQueue(current_activity)
      end

  end

end