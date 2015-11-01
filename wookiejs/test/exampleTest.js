var assert = require('assert');
describe('Thing', function() {
  it('should do a thing', function() {
    let a = 'foo!'
    assert.equal(`I say ${a}`, 'I say foo!');
  });
});

