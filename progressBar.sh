#! /bin/bash/
#  进度指示器

################ function define #############

function dot {
  INTERVAL=1
  while true
  do
	echo -e ".\c"
	sleep $INTERVAL
  done
}

function rotate {
  INTERVAL=1       # time to sleep
  TCOUNT=0         # loop control

  while :     #loop forever
  do
	  TCOUNT=`expr $TCOUNT + 1`  

	  case $TCOUNT in
		  "1") echo -e '-'"\b\c"
			  sleep $INTERVAL
			  ;;
	          "2") echo -e '\\'"\b\c"
                          sleep $INTERVAL
			  ;;
		  "3") echo -e "|\b\c"
			  sleep $INTERVAL
			  ;;
		  "4") echo -e "/\b\c"
			  sleep $INTERVAL
			  TCOUNT=0
			  ;;
	  esac
		  
  done
}


################  main start  ####################
echo "start"
rotate


