module MotionVolley

  class RequestListener

    def initialize(activity, &callback)
      @activity = activity
      @custom_callback = callback
    end

    def onResponse(json)
      @activity.data_response(json)
    end

  end

end
