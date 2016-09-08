# motion-android-volley


# **WORK IN PROGRESS**

If you found this, and decide to use it, be aware that his is a POC/WIP and is still in progress, API might change.

* Based on examples from RubyMotionSamples and other examples from the internet

## ToDo

- [x] Move to Gradle instead of jar (if possible)
- [x] Helper methods to make requests
- [ ] How to create listeners & callbacks
- [ ] POST/PATCH/DELETE requests

### Prerequisite

This gem uses [motion-gradle](https://github.com/HipByte/motion-gradle) to manage the Java dependencies, so you need to have Gradle installed. For details, see the [motion-gradle README](https://github.com/HipByte/motion-gradle)

## Installation

Add this line to your application's Gemfile:

    gem 'motion-android-volley'

And then execute:

    $ bundle

## Usage


### Array (array of objects)
```ruby
url = "http://jsonplaceholder.typicode.com/posts"

# error_listener and success_listener are optional
# One-line helper
requests = MotionVolley::Request.new.json_array(url, activity, self, success_listener, error_listener)

# Or you can do it the "normal way" (this is an example used inside a Fragment)
# `self` means Fragment (Fragment, ListFragment...)
# `activity` the activity (MainActivity) this fragment belongs to, where the queue is going to be attached.

success_listener = MotionVolley::RequestListener.new self
error_listener   = MotionVolley::OnError.new
get = MotionVolley::JsonArrayRequest.build(url, success_listener, error_listener)
MotionVolley::Queue.build(activity).add(get)
```


## JsonObjetRequest
```ruby
url = 'http://jsonplaceholder.typicode.com/posts/12'

# one-line Helper
requests = MotionVolley::Request.new.json(:get, url, activity, self, nil, success_listener, error_listener)

# Calling the classes
success_listener = MotionVolley::RequestListener.new self
error_listener   = MotionVolley::OnError.new
get = MotionVolley::JsonObjectRequest.build(:get, url, success_listener, error_listener)
MotionVolley::Queue.build(activity).add(get)
```



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
