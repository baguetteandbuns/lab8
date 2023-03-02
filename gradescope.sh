git clone $1
if [[ -e ListExamples.java ]]
then echo "ListExamples.java was found"
else 
echo "ListExamples.java was not found. Submit again"
exit
fi

mkdir -cp ListExamples.java ./GradeScope_dir/ListExamplesGrading.java
cp ListExamplesTester.java ./GradeScope_dir/ListExamplesTesterGrading.java

cd GradeScope_dir
javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
if [[ $? -neg0 ]]
then echo "ListExamples.hava was not able to compile"
fi


java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTesterGrading