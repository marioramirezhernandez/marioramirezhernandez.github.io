$(document).ready(function(){
    let cartas = new Array(54).fill(false);
    var cont = 0;
    //funcion click del boton dar carta
    $("#dar_carta").click(function(){
        var b = true;
        while(b){
            var num = Math.floor(math.random()*54) + 1;
            console.log("numero de cartas"+num);
            if(cartas[num-1] ==true){
                continue;
            } else{
                $("carta_activa").html("<img src=loteria/"+num+".jpg>");
                cartas[num-1] = true;
                b=false;
                cont++;
            }
            if(cont == 54){
                console.log("ya se dieron todas las cartas");
                b=false
          }
    }
    });
    function cargarCartas(){
        var carta1 = 0;
        var carta12 =0;
        let asignadas = new Array(54).fill(false);

        while(carta1 < 16){
            var num = math.floor(Math.random()*54) + 1;
            if(asignadas[num-1]== false){
                $("#carta1").html("<div class=´col-4´><img src=´"+num+"");
                carta1++;

            }else{
                continue
            }
        }
    }
})