#!/bin/bash

#Código
CPU=$(( $RANDOM % 3 ))

case $CPU in
  0)
     CPUJ=$(echo "Piedra")
  ;;

  1)
     CPUJ=$(echo "Papel")
  ;;

  2)
     CPUJ=$(echo "Tijera")
  ;;
esac

 echo Juega piedra, papel o tijera contra el PC, selecciona a continuación tu elección.

select jugador in Piedra Papel Tijera
 do
 break
done

 echo Has elegido $jugador y la CPU $CPUJ

 sleep 2

if [ $CPU -eq 0  ]
 then
   case $jugador in

     Piedra)
     echo Has empatado
     ;;

     Papel)
     echo Has ganado
     ;;

     Tijera)
     echo Has perdido
     ;;

   esac

 else

 if [ $CPU -eq 1 ]
 then
     case $jugador in

      Piedra)
      echo Has perdido
      ;;

      Papel)
      echo Has empatado
      ;;

      Tijera)
      echo Has ganado
      esac

    else

       if [ $CPU -eq 2 ]
          then
            case $jugador in

            Piedra)
            echo Has ganado
            ;;

            Papel)
            echo Has perdido
            ;;

            Tijera)
            echo Has empatado
            esac
            fi
   fi
fi
