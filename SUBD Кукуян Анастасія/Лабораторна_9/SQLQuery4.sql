SELECT TOP 1 ����.���_�����, COUNT(�����.���_�����) AS ʳ������_���� FROM ����
JOIN ����� ON ����.���_����� = �����.���_�����
GROUP BY ����.���_�����
ORDER BY COUNT(�����.���_�����) DESC
