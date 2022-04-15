# Interstellar: Next TMS Platform

This library is an [Interstellar](https://github.com/next-tms/interstellar-next-platform) plug-in that adds the Next TMS `Platform`.

The `Platform` is handy for brokers that wish to offer their web services to customers via API in Ruby.

See [Next TMS](https://next-tms.com)

## Installation

Using bundler, add to the `Gemfile`:

```ruby
gem 'interstellar'
gem 'interstellar-next-platform'
```

## Extending

To register a broker (`Carrier` in Interstellar terminology) based on Next TMS:

```ruby
module Interstellar
  class BestBroker < Next
    REACTIVE_FREIGHT_CARRIER = true

    cattr_reader :name, :scac
    @@name = 'Best Broker'
    @@scac = nil
  end
end

Interstellar::Carriers.register(:BestBroker, 'gem-name/carriers/best_broker')
```

This is enough information to create an Interstellar `Carrier` that communicates over the broker's Next TMS API.

```ruby
# Carrier can be accessed as an Interstellar::Carrier

carrier = Interstellar::BestBroker.new
```
