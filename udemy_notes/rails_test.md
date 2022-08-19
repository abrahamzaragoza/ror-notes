### Rails Testing
generate test unit scaffolding
```
rails g test_unit:scaffolding <resource_to_test>
rails g test_unit:scaffolding category
```
generate integration test
```
rails g integration_test <name>
```

run all tests excep system test
```
rails test
```

run specific test
```
rails test test/<path>
rails test test/<path>/<file>
rails test test/controllers
```

**Functional Test vs Integration Test**
Integration test all functions of a feature.
