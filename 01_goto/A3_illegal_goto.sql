SET SERVEROUTPUT ON;

-- PART 1: ILLEGAL EXAMPLE
-- A GOTO cannot jump from outside an IF statement into the IF statement.
-- Keep this example commented so the file can still run successfully.
--
-- DECLARE
--     v_value NUMBER := 10;
-- BEGIN
--     GOTO inside_if;  -- Illegal jump into a structured block
--
--     IF v_value > 0 THEN
--         <<inside_if>>
--         DBMS_OUTPUT.PUT_LINE('Inside IF');
--     END IF;
-- END;
-- /

-- PART 2: CORRECTED VERSION
DECLARE
    v_value NUMBER := 10;
BEGIN
    IF v_value > 0 THEN
        GOTO positive_label;
    END IF;

    DBMS_OUTPUT.PUT_LINE('The value is not positive.');
    GOTO finish;

    <<positive_label>>
    DBMS_OUTPUT.PUT_LINE('The value is positive.');

    <<finish>>
    NULL;
END;
/

PROMPT The commented section demonstrates the illegal GOTO; the executable section shows the fix.
