# Todo App

Um aplicativo de lista de tarefas (To-Do) simples, desenvolvido em Flutter, utilizando o padrão **BLoC** (Business Logic Component) e persistência de dados com **Hydrated BLoC**.

## 🚀 Funcionalidades

- Adicionar novas tarefas com título e descrição.
- Marcar tarefas como concluídas (checkbox).
- Excluir tarefas.
- Persistência automática de dados usando **Hydrated BLoC**.

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento mobile multiplataforma.
- **BLoC**: Gerenciamento de estado com **flutter_bloc**.
- **Hydrated BLoC**: Persistência automática de estado.
- **flutter_slidable**: Componente deslizável para ações (como excluir tarefas).
- **Cupertino e Material Widgets**: Interface moderna e responsiva.

## 📂 Estrutura do Projeto

lib/ 
  ├── bloc/ │ 
    ├── todo_bloc.dart # Lógica de negócio (BLoC) para o gerenciamento de tarefas. │ 
    ├── todo_event.dart # Eventos que modificam o estado do BLoC. │ 
    └── todo_state.dart # Estado do BLoC, incluindo o estado atual das tarefas. 
  ├── data/ │ 
    └── todo.dart # Modelo de dados (classe Todo). 
  ├── pages/ │ 
    └── home_page.dart # Tela principal do aplicativo.

## 📋 Como Funciona

1. **Adicionar uma Tarefa**  
   - Clique no botão "+" no canto inferior direito.  
   - Preencha o título e a descrição da tarefa.  
   - Clique no botão de checkmark para salvar.

2. **Excluir uma Tarefa**  
   - Deslize a tarefa para a direita.  
   - Clique no botão "Deletar".

3. **Marcar como Concluída**  
   - Clique no checkbox ao lado da tarefa.

4. **Persistência**  
   - As tarefas são salvas automaticamente no armazenamento local do dispositivo, mesmo após o fechamento do app.

## 📦 Dependências

As principais dependências utilizadas neste projeto incluem:

- **flutter_bloc**: `^8.0.0`
- **hydrated_bloc**: `^9.0.0`
- **flutter_slidable**: `^2.0.0`
Para ver a lista completa, confira o arquivo `pubspec.yaml`.
