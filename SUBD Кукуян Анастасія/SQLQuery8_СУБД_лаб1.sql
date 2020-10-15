CREATE TABLE ���� (
	���_����� INT NOT NULL,
	����� VARCHAR(15) NOT NULL,
	���� VARCHAR(50) NOT NULL,
	PRIMARY KEY (���_�����)
);

CREATE TABLE ����� (
	���_����� INT NOT NULL,
	����� VARCHAR(15) NOT NULL,
	�����_������� INT,
	���_����� INT NOT NULL,
	г�_������� INT NOT NULL,
	ʳ������_������� INT NOT NULL,
	������� MONEY NOT NULL,
	���������� VARBINARY(Max) NULL,
	PRIMARY KEY (���_�����),
	CONSTRAINT FK_���� FOREIGN KEY (���_�����) 
	REFERENCES ���� (���_�����) ON DELETE CASCADE ON UPDATE CASCADE );

CREATE TABLE ����� (
	���_������ INT NOT NULL,
	������� VARCHAR(20) NOT NULL,
	[��'�] VARCHAR(15) NOT NULL,
	[��-�������] VARCHAR(20),
	�������� VARCHAR(20),
	г�_���������� INT NOT NULL,
	г�_����� INT,
	���� VARBINARY(Max) NULL,
	PRIMARY KEY (���_������)
);

CREATE TABLE ����������� (
	���_����������� INT NOT NULL,
	����� VARCHAR(30) NOT NULL,
	̳��� VARCHAR(15),
	������� VARCHAR(15),
	������� INT NOT NULL,
	��_������ VARCHAR(50) NOT NULL,
	���� VARCHAR(50),
	г�_���������� INT,
	PRIMARY KEY (���_�����������)
);

CREATE TABLE ��������� (
	���_�������� INT NOT NULL,
	����� VARCHAR(20) NOT NULL,
	��� VARCHAR(15) NOT NULL,
	̳��� VARCHAR(20) NOT NULL,
	������ VARCHAR(20) NOT NULL,
	������� INT NOT NULL,
	������� INT NOT NULL,
	��_������ VARCHAR(50),
	г�_���������� INT,
	PRIMARY KEY (���_��������)
);

CREATE TABLE ��������� (
	���������_����� INT NOT NULL,
	������� VARCHAR(20) NOT NULL,
	[��'�] VARCHAR(15) NOT NULL,
	[��-�������] VARCHAR(20),
	̳��� VARCHAR(20) NOT NULL,
	������ VARCHAR(20) NOT NULL,
	������� INT NOT NULL,
	������� INT NOT NULL,
	����_��������� DATE NOT NULL,
	������ VARCHAR(15) NOT NULL,
	PRIMARY KEY (���������_�����),
);

CREATE TABLE ����_���� (
	���_������ INT NOT NULL,
	���_�������� INT NOT NULL,
	���_����� INT NOT NULL,
	���_������ INT NOT NULL,
	����_������ DATE NOT NULL,
	����_���������� DATE NOT NULL,
	���������_����� INT NOT NULL,
	����������� BIT NOT NULL,
	PRIMARY KEY (���_������),
	CONSTRAINT FK_��������� FOREIGN KEY (���_��������) 
	REFERENCES ���������(���_��������) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_����� FOREIGN KEY (���_�����) 
	REFERENCES �����(���_�����) ON DELETE CASCADE ON UPDATE CASCADE, 
	CONSTRAINT FK_����� FOREIGN KEY (���_������) 
	REFERENCES �����(���_������) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_��������� FOREIGN KEY (���������_�����) 
	REFERENCES ���������(���������_�����) ON DELETE CASCADE ON UPDATE CASCADE );

CREATE TABLE ���������� (
	�����_�������� INT NOT NULL,
	���_�������� INT NOT NULL,
	���_����� INT NOT NULL,
	ʳ������_���� INT NOT NULL,
	���_����������� INT NOT NULL,
	����_�������� DATE NOT NULL,
	���������_���� MONEY NOT NULL,
	PRIMARY KEY (�����_��������),
	CONSTRAINT FK_�������� FOREIGN KEY (���_��������) 
	REFERENCES ���������(���_��������) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_���� FOREIGN KEY (���_�����) 
	REFERENCES �����(���_�����) ON DELETE CASCADE ON UPDATE CASCADE, 
	CONSTRAINT FK_����������� FOREIGN KEY (���_�����������) 
	REFERENCES �����������(���_�����������) ON DELETE CASCADE ON UPDATE CASCADE );
