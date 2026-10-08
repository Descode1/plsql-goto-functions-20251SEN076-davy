SET SERVEROUTPUT ON;

-- Rewrite of a classification program without GOTO.
DECLARE
    v_number NUMBER := -7;
BEGIN
    IF v_number > 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_number || ' is a positive number.');
    ELSIF v_number < 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_number || ' is a negative number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_number || ' is zero.');
    END IF;
END;
/
