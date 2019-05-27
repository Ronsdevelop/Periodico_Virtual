
function FechaActual() {
    momentoActual = new Date();
    dd = momentoActual.getDate();
    mm = momentoActual.getMonth();
    yyyy = momentoActual.getFullYear();

    if (dd < 10){
        //  dia es menor que 10 se le añade un 0 delante.

        dd = "0" + dd;
    }

    if (mm < 10) {

        //mes es menor que 10 se le añade un 0 delante.
        mm = "0" + (mm+1);
    }  

    return yyyy + "-" + mm + "-" + dd;
   

}
