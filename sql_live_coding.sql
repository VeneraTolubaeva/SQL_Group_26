-- ������� ���� ���������, � ������� ����� ���������� �� f,s � b
select * from students where name similar to '(F|S|B)%';

-- ������� ���� ���������, ������� ���� ����������������� � 10 ������ 2020 � 2021 ����
select * from students where date_part('year', created_on) >= '2020' and date_part('month', created_on) = '10'; 

-- ������� ���� ���������, ������� ���� ����������������� ����� 10 ������ 2021 ����
select * from students where date_part('year', created_on) = '2021' and date_part('month', created_on) > '10'; 
