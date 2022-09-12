## TDD
Test-driven development (TDD) is a software development process relying on software requirements being converted to test cases before software is fully developed, and tracking all software development by repeatedly testing the software against all test cases. This is as opposed to software being developed first and test cases created later.

* Add a test
  * The adding of a new feature begins by writing a test that passes iff the feature's specifications are met.
* Run all tests. The new test should fail for expected reasons
  * This shows that new code is actually needed for the desired feature. It validates that the test harness is working correctly. It rules out the possibility that the new test is flawed and will always pass.
* Write the simplest code that passes the new test
  * Inelegant or hard code is acceptable, as long as it passes the test. No code should be added beyond the tested functionality.
* All tests should now pass
  * If any fail, the new code must be revised until they pass. This ensures the new code meets the test requirements and does not break existing features.
* Refactor as needed, using tests after each refactor to ensure that functionality is preserved
  * Code is refactored for readability and maintainability. In particular, hard-coded test data should be removed. Running the test suite after each refactor helps ensure that no existing functionality is broken.
* Repeat
