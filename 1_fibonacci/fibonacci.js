function fibonacci(n) {
  if (n <= 2) return n;
  return fibonacci(n-1) + fibonacci(n-2);
}

var Benchmark = require('benchmark');
var suite = new Benchmark.Suite;

for (var i = 1; i <= 3; ++i) {
  (function () {
    var n = i * 10;
    suite.add('fibonacci(' + n + ')', function() {
      fibonacci(n);
    });
  })();
}

suite.on('cycle', function (event) {
  console.log(String(event.target));
})
.run({ 'async': true });
