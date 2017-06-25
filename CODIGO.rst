Código incrustado
=================

Código PL/SQL
-------------

.. literalinclude:: codigo.sql
   :language: sql
   :emphasize-lines: 1,2-10
   :linenos:


.. code-block:: sql

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

