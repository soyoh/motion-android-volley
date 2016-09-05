module MotionVolley

  class Queue

    class << self

      def build(current_activity)
        queue = Com::Android::Volley::Toolbox::Volley.newRequestQueue(current_activity)
      end
      
    end

  end

end