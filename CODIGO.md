# Resaltado de código

```sql
CREATE OR REPLACE
TRIGGER Subida_salario
AFTER UPDATE OF SALAR ON EMPLEADOS
FOR EACH ROW

BEGIN
  IF (:new.SALAR - :old.SALAR) > (:old.SALAR * 0.05) THEN
     INSERT INTO AUDITORIA_EMPLEADOS 
     VALUES(TO_CHAR(SYSDATE,'DD/MM/YYYY HH:MI:SS') 
       || ' - MODIFICACIÓN SALARIO - '  
       || :old.NUMEM || ' ' || :old.NOMEM || ' - '
       || :old.SALAR || ' --> ' || :new.SALAR );
  END IF;
END Subida_salario;
```

[import](codigo.sql)
[codigo.sql](codigo.sql)





