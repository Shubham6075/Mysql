ALTER TABLE companies 
ADD COLUMN phone VARCHAR(15);
 
ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;   -- Adding Columns

select * FROM companies;

ALTER TABLE companies DROP COLUMN phone;             -- Drop Column

RENAME TABLE companies to suppliers;


ALTER TABLE suppliers RENAME TO companies;


ALTER TABLE companies
RENAME COLUMN name TO company_name;                   -- Rename Column

ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';     -- Modify Columns

ALTER TABLE houses 
ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);


ALTER TABLE houses DROP CONSTRAINT positive_pprice;            -- Constraints
