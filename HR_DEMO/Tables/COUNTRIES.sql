CREATE TABLE hr_demo.countries (
  country_id CHAR(2 BYTE) NOT NULL CONSTRAINT country_id_nn CHECK ("COUNTRY_ID" IS NOT NULL),
  country_name VARCHAR2(40 BYTE),
  region_id NUMBER,
  CONSTRAINT countr_reg_fk FOREIGN KEY (region_id) REFERENCES hr_demo.regions (region_id),
  CONSTRAINT country_c_id_pk PRIMARY KEY (country_id)
)
ORGANIZATION INDEX;
COMMENT ON TABLE hr_demo.countries IS 'country table. Contains 25 rows. References with locations table.';
COMMENT ON COLUMN hr_demo.countries.country_id IS 'Primary key of countries table.';
COMMENT ON COLUMN hr_demo.countries.country_name IS 'Country name';
COMMENT ON COLUMN hr_demo.countries.region_id IS 'Region ID for the country. Foreign key to region_id column in the departments table.';