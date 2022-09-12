## RSpec
RSpec is an open-source Ruby *testing* library, it's the most popular Ruby Gem. It's also known as a DSL (domain specific language).

Why test code?
* Avoid regressions when new features are added.
* Provide living documentation for the codebase.
* Isolate specific problems or bugs.
* Improve the quality of code, especially design.
* Cut down developer time.

RSpec consist of 3 independient Gems.
* rspec-core - base library that organizes and runs the tests.
* rspec-expectation - matcher library that implements assertions.
* rspec-mocks - used to fake behavior of classes and objects.

**rspec-rails** - integrates RSpec with the Ruby on Rails web framework.

### Project Structure
Most project have a *spec* directory to house all RSpec test files, which mimic the structur of *lib* folder (Ruby projects) or the *app* folder in Rails.

RSpec files end with a _spec.rb extension.
> A Knight class in knight.rb should have a knight_spec.rb file.
