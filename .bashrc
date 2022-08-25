alias checkstyleall="java -jar ~cs2030s/bin/checkstyle.jar -c ~cs2030s/bin/cs2030_checks.xml *.java"
alias checkstyle="java -jar ~cs2030s/bin/checkstyle.jar -c ~cs2030s/bin/cs2030_checks.xml"

function check () {
  # this function takes in 3 parameters 
  # call example : checktestcase Lab3 inputs/Lab3.1.in outputs/Lab3.1.out
  java "$lab" < "$input" > OUT
  vim -d OUT "$output"

}

