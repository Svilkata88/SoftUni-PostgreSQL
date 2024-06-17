CREATE OR REPLACE FUNCTION fn_full_name(first_name VARCHAR(20), last_name VARCHAR(20))
RETURNS VARCHAR(20)
AS
    $$
        DECLARE
            full_name VARCHAR(50);
        BEGIN
            IF first_name IS NOT NULL and last_name IS NOT NULL THEN
                full_name := INITCAP(first_name) || ' ' || INITCAP(last_name);
            ELSEIF first_name IS NULL THEN
                full_name := INITCAP(last_name);
            ELSEIF last_name IS NULL THEN
                full_name := INITCAP(first_name);
            ELSE full_name := NULL;
            END IF;
            RETURN full_name;
        END;
    $$
LANGUAGE plpgsql;

SELECT fn_full_name('fred', 'sanford');
SELECT fn_full_name('', 'SIMPSONS');
SELECT fn_full_name('JOHN', '');
SELECT fn_full_name(NULL, NULL);