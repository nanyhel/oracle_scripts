#!/bin/sh

SEQUENCE=`sqlplus -s "/ as sysdba" <<EOF
SET PAGESIZE 0 FEEDBACK OFF VERIFY OFF HEADING OFF ECHO OFF
SELECT MAX(SEQUENCE#) FROM v\\$log_history;
EXIT;
EOF`
echo $SEQUENCE

CONNECT system/in39821@edbpva66_stdby
