CREATE OR REPLACE TRIGGER hr_demo.secure_employees  
  BEFORE INSERT OR UPDATE OR DELETE ON hr_demo.employees  
DISABLE BEGIN  
  secure_dml;  
END secure_employees;
/