# Infraestrutura como Código
## Script de criação de estrutura de usuários, diretórios e permissões.
### Neste repositório será apresentado arquivos de configuração que incluem as especificações da sua infraestrutura, facilitando a edição e a distribuição de configurações.

<p align="center">
<img src="https://media.tenor.com/NeJfHqkmdMIAAAAj/tux-linux-penguin.gif" width="140" height="140">

### Objetivos:
- Excluir diretórios, arquivos, grupos e usuários criados anteriormente;
* Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
+ O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório público;
* Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
+ Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem.
