module MotionVolley

  class Request


    def json_array(url, activity, view=nil, success_listener=nil, error_listener=nil)

      view = activity unless view
      success_listener = MotionVolley::RequestListener.new(view) unless success_listener
      error_listener   = MotionVolley::OnError.new unless error_listener

      request = MotionVolley::JsonArrayRequest.build(url, success_listener, error_listener)
      MotionVolley::RequestQueue.build(activity).add(request)
    end


    def json(method, url, activity, view=nil, params={}, success_listener=nil, error_listener=nil)
      _method = MotionVolley.convert_method(method)

      view = activity unless view
      success_listener = MotionVolley::RequestListener.new(view) unless success_listener
      error_listener   = MotionVolley::OnError.new unless error_listener

      request = MotionVolley::JsonObjectRequest.build(_method, url, success_listener, error_listener)
      MotionVolley::RequestQueue.build(activity).add(request)
    end

  end

end