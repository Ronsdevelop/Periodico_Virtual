//Declaración de variables necesarias para trabajar con las compras y
//sus detalles
var impuesto = 18;
var cont = 0;
var detalles = 0;
//$("#guardar").hide();
$("#btnGuardar").hide();

function agregardetalle(idarticulo, articulo, precio)
{
    var cantidad = 1;


    if (idarticulo != "")
    {
        var subtotal = cantidad * precio;
        var fila = '<tr class="filas" id="fila' + cont + '">' +
                '<td><button type="button" class="btn btn-danger" onclick="eliminarDetalle(' + cont + ')">X</button></td>' +
                '<td><input type="hidden" name="idarticulo[]" value="' + idarticulo + '">' + articulo + '</td>' +
                '<td><input type="number" name="cantidad[]" id="cantidad[]" required value="' + cantidad + '"></td>' +
                '<td ><input type="hidden" name="precio[]" id="precio[]" readonly value="' + precio + '">' + precio + '</td>' +
                '<td><span name="subtotal[]" id="subtotal[]' + cont + '">' + subtotal + '</span></td>' +
                '<td><button type="button" onclick="modificarSubototales()" class="btn btn-info"><i class="fa fa-refresh"></i></button></td>' +
                '</tr>';
        cont++;
        detalles = detalles + 1;
        $('#tabladetalle').append(fila);
        modificarSubototales();
    } else
    {
        alert("Error al ingresar el detalle, revisar los datos del artículo");
    }
}

function modificarSubototales()
{
    var cant = document.getElementsByName("cantidad[]");
    var prec = document.getElementsByName("precio[]");
    var sub = document.getElementsByName("subtotal[]");

    for (var i = 0; i < cant.length; i++) {
        var inpC = cant[i];
        var inpP = prec[i];
        var inpS = sub[i];

        inpS.value = inpC.value * inpP.value;
        document.getElementsByName("subtotal[]")[i].innerHTML = inpS.value;
    }
    calcularTotales();

}
function calcularTotales() {
    var sub = document.getElementsByName("subtotal[]");
    var total = 0.0;

    for (var i = 0; i < sub.length; i++) {
        total += document.getElementsByName("subtotal[]")[i].value;
    }
    $("#total").html("S/. " + total);
    evaluar();
}

function evaluar() {
    if (detalles > 0)
    {
        $("#btnGuardar").show();
    } else
    {
        $("#btnGuardar").hide();
        cont = 0;
    }
}

function eliminarDetalle(indice) {
    $("#fila" + indice).remove();
    calcularTotales();
    detalles = detalles - 1;
    evaluar();
    
}
function agregardetalle2(idarticulo, articulo)
{
    var cantidad = 1;


   if (idarticulo != "")
    {
        var fila = '<tr class="filas" id="fila' + cont + '">' +
                '<td><button type="button" class="btn btn-danger" onclick="eliminarDetalle(' + cont + ')">X</button></td>' +
                '<td><input type="hidden" name="idarticulo[]" value="' + idarticulo + '">' + articulo + '</td>' +
                '<td><input type="number" name="cantidad[]" id="cantidad[]" required value="' + cantidad + '"></td>' +
                '<td ><input type="text" name="precio[]" id="precio[]"></td>' +
                '</tr>';
        cont++;
        detalles = detalles + 1;
        evaluar();
        $('#tabladetalle').append(fila);
        modificarSubototales();
        
    } else
    {
        alert("Error al ingresar el detalle, revisar los datos del artículo");
    }}