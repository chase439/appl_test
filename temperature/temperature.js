$(document).ready(function() {
  var fah_node = $("#fah");
  var cel_node = $("#cel");

  fah_node.on("change", function() {
    print_result(cel_node, (this.value - 32) * 5/9);
  });
  cel_node.on("change", function() {
    print_result(fah_node, this.value * 9/5 + 32);
  });

  function print_result(target, result) {
    var finalResult = isNaN(result) ? "Not A Number" : result.toFixed(2);
    target.val(finalResult);
  }
});
