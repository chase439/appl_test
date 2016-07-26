$(document).ready(function() {
  fah = $("#fah");
  cel = $("#cel");

  fah.on("change", function() {
    print_result(cel, (fah.val() - 32) * 5/9);
  });
  cel.on("change", function() {
    print_result(fah, cel.val() * 9/5 + 32);
  });

  function print_result(target, result) {
    result2 = isNaN(result) ? "Not A Number" : result.toFixed(2);
    target.val(result2);
  }
});
