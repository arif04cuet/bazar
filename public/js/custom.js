$(document).ready(function() {
  //product drop down change
  $("body").on("change", "select.product_id", function() {
    var product_id = $(this).val();
    var currentRow = $(this).parents(".has-many-items-form");
    $.ajax({
      type: "GET",
      url: "/ajax/product/" + product_id,

      success: function(data) {
        currentRow.find("#unit_price").val(data.default_price);
        $unit_html =
          '<div class="" id="unit_html">' + data.unit.name + "</div>";
        currentRow.find("#unit_html").remove();
        currentRow
          .find("#amount")
          .parent(".input-group")
          .append($unit_html);

        //set bazar id

        if ($("select.bazar_id").eq(0).length > 0) {
          bazarId = $("select.bazar_id")
            .eq(0)
            .val();

          currentRow
            .find(".bazar_id")
            .val(bazarId)
            .change();
        }
      }
    });
  });

  //default price and amount inout change

  $(".has-many-items-form .box-body").html($("#total").val());

  $("body").on("keyup", "#unit_price,#amount", function() {
    var currentRow = $(this).parents(".has-many-items-form");
    var unit_price = currentRow.find("#unit_price").val()
      ? currentRow.find("#unit_price").val()
      : 0;
    var amount = currentRow.find("#amount").val()
      ? currentRow.find("#amount").val()
      : 0;
    updateTotal(unit_price, amount, currentRow);
  });

  function updateTotal(unit_price, amount, currentRow) {
    var value = parseFloat(unit_price) * parseFloat(amount);
    currentRow.find(".box-body").html(value);
    currentRow.find("#total").val(value);
  }
});
