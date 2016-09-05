module MotionVolley

  class RequestListener

    def initialize(activity, &callback)
      @activity = activity
      @custom_callback = callback
    end

    def onResponse(json)
      # puts " ################## "
      # puts @activity
      # puts @custom_callback
      # puts " ################## "
      @activity.data_response(json)
    end

  end

end
