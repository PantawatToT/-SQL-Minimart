-- Ẻ�֡�Ѵ SQL ��ҹ������  Minimart
-- 1. �Թ��ҷ�����Ҥ� 15 �ҷ
select * from products
where UnitPrice = 15

-- 2. �Թ��ҷ���ըӹǹ��������ʵ�͡��ӡ��� 250
select COUNT(*) 
from products
where UnitsinStock < 250

-- 3. �����Թ�� �����Թ��ҷ����ԡ��˹�������
select ProductID,ProductName
from Products
where Discontinued = 1

-- 4. �����Թ��� �����Թ��� �Ҥ� �ͧ�Թ��ҷ�����Ҥ��ҡ���� 100
select ProductID,ProductName,UnitPrice
from Products
where UnitPrice > 100

-- 5. �����Թ��� ����ҤҢͧ�ҧź
select ProductID,Unitprice
from Products
where Productname = '�ҧź'

-- 6. �����Ţ����� �ѹ��� ��� �Ҥ���� �ͧ����稷���͡��͹�ѹ��� 15 �.�.
select ReceiptID,ReceiptDate,TotalCash
from Receipts
where ReceiptDate < '2013-02-15'
-- 7. �����Թ��� �����Թ��� ����ըӹǹ������͵���� 400 ����
select ProductID,ProductName
from Products
where UnitsinStock > 400

-- 8. �����Թ��� �����Թ��� �Ҥ� ��� �ӹǹ������� �ͧ����,����,�Թ��,�ҧź
select ProductID,ProductName,UnitPrice,UnitsInStock
from products
where ProductName = '����'
		or ProductName = '����'
		or ProductName = '�Թ��'
		or ProductName = '�ҧź'
		
-- 9. ��������´�ͧ�Թ��һ���������ͧ��¹
select Description
from Categories
where CategoryName = '����ͧ��¹'

-- 10. ���ʻ������Թ��� ���ͻ����� �����������´�ͧ �Թ��һ���������ͧ���ҧ
select CategoryID,CategoryName,Description
from Categories
where CategoryName = '����ͧ���ҧ'

-- 11.�ӹ�˹�� ���� ���ʡ�� �ͧ��ѡ�ҹ����� Sale Representative
select Title,FirstName,LastName
from Employees
where Position = 'Sale Representative'

-- 12. ���ʾ�ѡ�ҹ ���;�ѡ�ҹ ���ͼ���� ���ʼ�ҹ �ͧ��ѡ�ҹ�ء��
select EmployeeID,FirstName,UserName,Password
from Employees

-- 13. ���ͼ���� ������ʼ�ҹ�ͧ��ѡ�ҹ�����͡�ͧ���ѹ���
select UserName,Password
from Employees
where FirstName = '��ͧ���ѹ���'

-- 14. ���ʾ�ѡ�ҹ����͡����������Ţ 3
select EmployeeID
from Receipts
where ReceiptID = 3

-- 15. �����Թ��� �����Թ��� �Ҥ� �ͧ�Թ��ҷ�������ʻ����� 2, 4
select ProductID,ProductName,UnitPrice
from Products
where CategoryID in(2,4)