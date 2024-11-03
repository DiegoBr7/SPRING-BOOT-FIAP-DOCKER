CREATE SEQUENCE ACIDENTE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

CREATE TABLE TB_ACIDENTE (
    ID INTEGER DEFAULT ACIDENTE_SEQ.NEXTVAL PRIMARY KEY,
    LOCALIZACAO VARCHAR2(255) NOT NULL,
    GRAVIDADE VARCHAR2(255) NOT NULL,
    DATA DATE NOT NULL
);

--CREATE TRIGGER TRG_ACIDENTE_ID
--BEFORE INSERT ON TB_ACIDENTE
--FOR EACH ROW
--BEGIN
--    SELECT ACIDENTE_SEQ.NEXTVAL INTO :NEW.ID FROM dual;
--END;
