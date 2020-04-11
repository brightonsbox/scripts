#!/bin/sh

USERNAME=
PASSWORD=
ORACLE_URL=localhost:1521/<SID>

RESPONSE=
function evaluate() 
{
    RESPONSE=`sqlplus -silent $USERNAME/$PASSWORD@//$ORACLE_URL <<EOF
    SET PAGESIZE 0 FEEDBACK OFF VERIFY OFF HEADING OFF ECHO OFF
    $1 
    EXIT;
    EOF`
}

QUERY="SELECT * FROM some_table WHERE some_constraint;"
evaluate "$QUERY"
echo $RESPONSE
