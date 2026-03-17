CREATE TABLE Curso 
( 
 ID_Curso INT PRIMARY KEY,  
 Materia VARCHAR(100),  
 Professor VARCHAR(100)
); 

CREATE TABLE Turma 
( 
 ID_Turma INT PRIMARY KEY,  
 Turno VARCHAR(50),  
 Serie VARCHAR(50),  
 Data_Final DATE,  
 Data_Inicial DATE,  
 ID_Curso INT,
 FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
); 

CREATE TABLE Professor 
( 
 RG INT PRIMARY KEY,  
 Nome VARCHAR(100),  
 Telefone VARCHAR(20),  
 Email VARCHAR(100)
); 

CREATE TABLE Matricula 
( 
 ID_Matricula INT PRIMARY KEY,
 Data_Inicial DATE,  
 Data_Final DATE,  
 ID_Curso INT,
 FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
); 

CREATE TABLE Aluno 
( 
 RG INT PRIMARY KEY,  
 Nome VARCHAR(100),  
 Email VARCHAR(100),  
 Telefone VARCHAR(20),  
 ID_Matricula INT,
 FOREIGN KEY (ID_Matricula) REFERENCES Matricula(ID_Matricula)
); 

CREATE TABLE Constitui 
( 
 RG INT,  
 ID_Turma INT,
 PRIMARY KEY (RG, ID_Turma),
 FOREIGN KEY (RG) REFERENCES Aluno(RG),
 FOREIGN KEY (ID_Turma) REFERENCES Turma(ID_Turma)
); 

CREATE TABLE Prove 
( 
 ID_Curso INT,  
 RG INT,
 PRIMARY KEY (ID_Curso, RG),
 FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso),
 FOREIGN KEY (RG) REFERENCES Professor(RG)
);