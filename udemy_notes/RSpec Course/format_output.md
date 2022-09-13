**Setting format from .rspec**

```
--format documentation
```

**Using flags**

```
rspec -f d spec/<name>_spec.rb
```

**Adding formatter to config**

```
RSpec.configure do |config|
  config.formatter = :documentation
end
```
