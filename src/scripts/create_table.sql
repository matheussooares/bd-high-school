CREATE TABLE Alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(250),
    data_nasc DATE,
    genero VARCHAR(50),
    endereco VARCHAR(250),
    telefone VARCHAR(50),
    email VARCHAR(100)
  );
  
CREATE TABLE Professores (
    id INT PRIMARY KEY,
    nome VARCHAR(250),
    data_nasc DATE,
    genero VARCHAR(50),
    telefone VARCHAR(50),
    email VARCHAR(100)
);
  
CREATE TABLE Disciplinas (
    id INT PRIMARY KEY,
    nome VARCHAR(250),
    descricao VARCHAR(250),
    carga_horaria INT,
    professor INT,
    FOREIGN KEY (professor) REFERENCES Professores(id)
);
  
CREATE TABLE Turmas (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    ano DATE,
    professor INT,
    FOREIGN KEY (professor) REFERENCES Professores(id)
);
  
CREATE TABLE Turma_Disciplinas (
    id_turma INT,
    id_disciplina INT,
    FOREIGN KEY (id_turma) REFERENCES Turmas(id),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id)
);

CREATE TABLE Turma_Alunos (
    id_turma INT,
    id_aluno INT,
    FOREIGN KEY (id_turma) REFERENCES Turmas(id),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id)
);
 
CREATE TABLE Notas (
   id INT PRIMARY KEY,
   id_aluno INT,
   id_disciplina INT,
   nota INT,
   data DATE,
   FOREIGN KEY (id_aluno) REFERENCES Alunos(id),
   FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id)
);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    