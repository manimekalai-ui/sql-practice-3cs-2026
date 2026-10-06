SET SERVEROUTPUT ON;

DECLARE
    v_id       Titanic.Passenger_ID%TYPE := &Passenger_ID;
    v_name     Titanic.Passenger_Name%TYPE;
    v_gender   Titanic.Gender%TYPE;
    v_age      Titanic.Age%TYPE;
    v_class    Titanic.Passenger_Class%TYPE;
    v_survived Titanic.Survived%TYPE;
BEGIN
    SELECT Passenger_Name, Gender, Age, Passenger_Class, Survived
    INTO v_name, v_gender, v_age, v_class, v_survived
    FROM Titanic
    WHERE Passenger_ID = v_id;

    DBMS_OUTPUT.PUT_LINE('Passenger Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Gender: ' || v_gender);
    DBMS_OUTPUT.PUT_LINE('Age: ' || v_age);
    DBMS_OUTPUT.PUT_LINE('Class: ' || v_class);
    DBMS_OUTPUT.PUT_LINE('Survived: ' || v_survived);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Passenger ID does not exist.');
END;
/
