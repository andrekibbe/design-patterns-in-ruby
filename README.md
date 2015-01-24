# design-patterns-in-ruby
My project code for Tuts+ tutorial, [Design Patterns in Ruby](https://github.com/Remchi/ruby_design_patterns) by Rem Zolotykh. Pretty much the same code found on the [Tuts+ repo for this course](https://github.com/Remchi/ruby_design_patterns), with a couple of differences in the spec files:

1. [Updated Rspec syntax](http://teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/) to eliminate deprecation warnings for stubs (e.g. `allow(foo).to receive(:message).and_return(:value)` instead of `foo.stub(:message).and_return(:value)`) and boolean states (i.e. "truthy" and "falsey" instead of "true" and false).
2. Occasionally tweaked the wording in the expectation comments to more idiomatic English.

The official repo has each pattern on a separate branch, whereas this repo has the whole project on the master branch.
