DELIMITER $$
CREATE FUNCTION xep_loai_hoc_luc( point float)
RETURNS VARCHAR(10)
BEGIN
DECLARE hoc_luc varchar(10);
IF point >= 8 THEN
SET hoc_luc = "Gioi";
ELSEIF point >= 6 THEN 
SET hoc_luc = "Kha";
ELSE
SET hoc_luc = "Yeu";
END IF;
RETURN hoc_luc;
END $$
DELIMITER ;

SELECT xep_loai_hoc_luc(9.5);