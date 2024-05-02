# Banco de Dados Escolar

Dado o contexto em que você seja o responsável por criar e gerenciar um banco de dados para uma escola. Esse banco de dados ajudará a organizar informações importantes sobre alunos, professores, disciplinas, turmas e notas.

## Objetivo
Dar os primeiros passos para configurar e usar o  banco de dados. Para tanto, é necessário definir os seguintes objetivos específicos:
- [ ] Estruturar o banco de dados atráves dos requisitos propostos pela escola
- [ ] Alimentar as tabelas com os dados fornecidos
- [ ] realizar consultas

## Estrutura do banco de dados

Para estrutura do banco de dados, é criando as tabelas para armazenar informações específicas. Bem como, é povoado essa tabela com dados da escola.


### Tabelas
 Utilizando SQL (Structured Query Language) para criar as tabelas.

- ***Alunos***: armazenará informações sobre os estudantes
    - **ID do Aluno**: Um identificador único para cada aluno.
    - **Nome do Aluno**: O nome completo do aluno.
    - **Data de Nascimento**: A data de nascimento do aluno.
    - **Gênero**: O gênero do aluno (masculino, feminino, outros).
    - **Endereço**: O endereço do aluno.
    - **Telefone de Contato**: O número de telefone de contato do aluno.
    - **E-mail**: O endereço de e-mail do aluno.

- ***Professores***: conterá detalhes sobre os professores da escola
    - **ID do Professor**: Um identificador único para cada professor.
    - **Nome do Professor**: O nome completo do professor.
    - **Data de Nascimento**: A data de nascimento do professor.
    - **Gênero**: O gênero do professor.
    - **Telefone de Contato**: O número de telefone de contato do professor.
    - **E-mail**: O endereço de e-mail do professor.


- ***Disciplinas***: manterá registros das matérias oferecidas
    - **ID da Disciplina**: Um identificador único para cada disciplina.
    - **Nome da Disciplina**: O nome da disciplina.
    - **Descrição**: Uma descrição da disciplina.
    - **Carga Horária**: A carga horária da disciplina.
    - **ID do Professor**: Uma chave estrangeira que faz referência ao professor que leciona a disciplina.

- ***Turmas***: será usada para registrar turmas específicas
    - ***ID da Turma***: Um identificador único para cada turma.
    - **Nome da Turma**: O nome ou código da turma.
    - **Ano Letivo**: O ano letivo da turma.
    - **ID do Professor Orientador**: Uma chave estrangeira que faz referência ao professor que orienta a turma.

- ***Turma_Disciplinas***: armazenara os dados das associações entre turmas e disciplinas
    - **ID da Turma**: Uma lista de chaves estrangeiras que fazem referência as turmas existentes.
    - **ID das Disciplinas**: Uma lista de chaves estrangeiras que fazem referência às disciplinas ministradas na turma.
    - OBS.: Os dois campos juntos formam a chave primaria da tabela

- ***Turma_Alunos***: será usada para registrar os dados das associações entre turmas e alunos
    - **ID da Turma**: Uma lista de chaves estrangeiras que fazem referência as turmas existentes.
    - **ID dos Alunos**: Uma lista de chaves estrangeiras que fazem referência aos alunos matriculados na turma.
    - OBS.: Os dois campos juntos formam a chave primaria da tabela

- ***Notas***: guardará as notas dos alunos em diferentes disciplinas
    - ID da Nota: Um identificador único para cada nota.
    - ID do Aluno: Uma chave estrangeira que faz referência ao aluno.
    - ID da Disciplina: Uma chave estrangeira que faz referência à disciplina.
    - Valor da Nota: A nota atribuída ao aluno na disciplina.
    - Data da Avaliação: A data em que a avaliação foi realizada.

### Dados
Para popular a tabela é proposto os dados da do arquivo [data](/src/data/).

### Consultas
- **Consulta 1**: Executar consultas para verificar se os dados foram importados corretamente em todas as tabelas.
- **Consulta 2**: Retorne as informações de todos os alunos ordenados pelo nome.
- **Consulta 3**: Retornar a disciplina que possui a carga horaria maior que 40.
- **Consulta 4**: Buscar as notas que são maiores que 6 e menores que 8.

## Considerações finais
Essas consultas simples permitem que a escola acesse informações cruciais e tome decisões informadas em relação ao desempenho dos alunos, disponibilidade de professores e muito mais.

## Referências 