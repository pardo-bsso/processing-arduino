# edit to match your current setup
export PROCESSING_ROOT="/media/datos/programas/processing-2.0b1"
export CLASSPATH="."
export CLASSPATH=$CLASSPATH:$PROCESSING_ROOT/core/library/core.jar
export CLASSPATH=$CLASSPATH:$PROCESSING_ROOT/modes/java/libraries/serial/library/serial.jar
export CLASSPATH=$CLASSPATH:$PROCESSING_ROOT/modes/java/libraries/serial/library/RXTXcomm.jar:

cd src

javac Arduino.java && javac -d . *.java && jar -cf arduino.jar cc && (mv arduino.jar ../library ; echo "Success !") || echo "Failed to build library"

