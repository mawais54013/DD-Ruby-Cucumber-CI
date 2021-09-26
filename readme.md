# Ci-Visibility For Ruby-Cucumber
 
## Compatibility 
Supported Ruby interpreters:

Ruby >= 2.1 <br/>
JRuby >= 9.2

Supported test frameworks:

Cucumber >= 3.0 <br/>
RSpec >= 3.0.0


## Prerequisites
 [Install the Datadog Agent to collect tests data](https://docs.datadoghq.com/continuous_integration/setup_tests/agent/?tab=azurepipelines)

 <br/>

[Install the Ruby tracer](https://docs.datadoghq.com/tracing/setup_overview/setup/ruby/#installation) 

Command:
```
bundle install
```
## How to Use:
Run bundle/rake command below
```
DD_ENV=ci bundle exec rake cucumber
```

## Results:
Should be shown in datadog ci after a couple of minutes:
https://app.datadoghq.com/ci/test-runs?index=citest&start=1632627253983&end=1632630853983&paused=false

Working example output:
![image](/test.png)

## Documentation
https://docs.datadoghq.com/continuous_integration/setup_tests/ruby/?tab=cucumber