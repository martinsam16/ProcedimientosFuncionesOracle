CREATE OR REPLACE TRIGGER martin.secure_employees
   BEFORE INSERT OR UPDATE OR DELETE ON martin.employees
   DISABLE BEGIN
   secure_dml;
   END secure_employees;
/