
# this script assumes that this file was already created
# with `sbt package` or `sbt assembly`
JAR_FILE=FileFind-assembly-0.1.jar
COMMAND_NAME=ff

echo "copying JAR file to current dir ..."
cp ../target/scala-2.12/${JAR_FILE} .

echo "running native-image ..."
# create a native image from the jar file and name
# the resulting executable `todo`
native-image -cp .:${SCALA_HOME}/lib/scala-library.jar:${JAR_FILE} --no-server -jar ${JAR_FILE} ${COMMAND_NAME}



