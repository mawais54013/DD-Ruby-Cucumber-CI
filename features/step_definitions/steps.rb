# features/step_definitions/steps.rb
require 'cucumber'
require 'datadog/ci'

Datadog.configure do |c|
  # Only activates test instrumentation on CI
  c.tracer.enabled = (ENV["DD_ENV"] == "ci")

  # Configures the tracer to ensure results delivery
  c.ci_mode.enabled = true

  # The name of the service or library under test
  c.service = 'my-ruby-app'

  # Enables the Cucumber instrumentation
  c.use :cucumber
end

Given("this will pass") do
    @this_will_pass = true
  end
  
  Given("this will fail") do
    @this_will_pass = false
  end
  
  When("I do an action") do
  end
  
  Then("some results should be there") do
    expect(@this_will_pass)
  end
  