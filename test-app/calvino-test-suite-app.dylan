module: calvino-test-suite-app

define suite calvino-test-suite ()
  suite calvino-math-test-suite;
end suite;

run-test-application(calvino-test-suite);
