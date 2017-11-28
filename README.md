WIP.

# Feedbackable

> Gain insights in to how your users feel when using your online services.

## What is Feedbackable?

When we develop a service online such as appointment booking, or requesting a medication we call this process **service design**. It incorporates our whole organisation from idea to design, to development, to deployment and finally **refinement through feedback**.

Just because a service is launched, it doesn't mean it's finished.

### **Feedbackable** allows us to follow the mood of our users using a particular service by getting them to answer a simple question such as:

> How easy did you find it to book an appointment today?

Or...

> How easy did you find it to read the graph with your blood pressure on it?

and allows our users to respond very quickly with how they're feeling and then optionally add some feedback.
![Example image of a feedbackable form](https://s3.eu-west-2.amazonaws.com/substrakthealth-public-scratch/feedbackable1.png)


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
