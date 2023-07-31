-- 1.Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.	
SELECT *
FROM SUBJECT
 WHERE Credit= ((SELECT MAX(Credit)
 FROM Subject));
-- 2.Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT s.*,m.Mark
from Subject s
join Mark m on s.SubId = m.SubId
where m.Mark = (select max(Mark) from Mark);
-- 3.Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT s.StudentName ,avg(c.Mark)
FROM Student s
LEFT JOIN Mark c
ON s.StudentId = c.StudentId
group by s.StudentName ;