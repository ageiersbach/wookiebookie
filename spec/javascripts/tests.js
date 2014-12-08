QUnit.test("hello test", function( assert ) {
  assert.ok( 1 == "1", "Passed!");
});

QUnit.test("wookie runner test", function( assert ) {
  assert.equal(WookieRunner.run(), "running!", "Wookie.run() simply returns a string, 'running!'");
});
