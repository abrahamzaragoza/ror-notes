You can define helper methods in a module and include it in your example
groups using the config.include configuration option.

> helpers.rb

```
module Helpers
  def help
    :available
  end
end
```

Include a module in all example groups

```
require './helpers'

RSpec.configure do |c|
  c.include Helpers
end

RSpec.describe "an example group" do
  it "has access to the helper methods defined in the module" do
    expect(help).to be(:available)
  end
end
```

Extend a module in all example groups

```
require './helpers'

RSpec.configure do |c|
  c.extend Helpers
end

RSpec.describe "an example group" do
  puts "Help is #{help}"

  it "does not have access to the helper methods defined in the module" do
    expect { help }.to raise_error(NameError)
  end
end
```

Direct definition in Example Group:

```
RSpec.describe Card do
  def card do
    Card.new('Ace', 'Spades')
  end

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end
```
