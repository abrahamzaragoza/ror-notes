RSpec uses the words "describe" and "it" so we can express concepts like a conversation:
* describe | "Describe an order."
* it | "It sums the prices of its line items."
* expect

### Scopes
**Example Group**
Example groups are defined by a *describe* or *context* block. The block is evaluated in the context of a subclass of RSpec::Core::ExampleGroup.

**Example**
Defined by a *it* block, are evaluated in the context of an instance of the example group class to which the example belongs. Examples are not executed when the spec file is loaded; instead, RSpec waits to run any examples until all spec files have been loaded, at which point it can apply filtering, randomization, etc.
