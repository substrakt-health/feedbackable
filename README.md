WIP.

# Feedbackable

> Gain insights in to how your users feel when using your online services.

## Why?

Read our rationale blog post here (not yet written.)

## Install

Feedbackable supports Rails 5.0 and higher.

Add it to your Gemfile.

```ruby
gem 'feedbackable'
```

Run the installer:

```shell
$ rails generate feedbackable
```

Customise your installation:

```
# app/models/service_feedback.rb

...customisation code here
```

Add the feedbackable concern to controller actions that you want fed-back on:

```
# app/controllers/my_services_controller.rb
include Feedbackable
gather_feedback_for service: :appointment_booked
```

This then allows you to render the view in any of those controller's action views.

```erb
<%= service_feedback_form %>
```

## Report

* Yet to write...



...I should've named this gem ["hit-miss-or-maybe"](https://www.youtube.com/watch?v=xRfkhy13VvQ)
