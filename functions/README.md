
# ColaborAtiva - Functions

Aqui estão todas cloud functions do projeto. Elas são necessárias para realizar operação de escrita no banco de dados conectando com o sistema notificação, mensageria e score.

As funções definidas aqui são:

- affiliate: cuida da afiliação de usuário, definindo o padrinho/madrinha de um membro.
- check_activity: realiza o checking em uma atividade.
- receive_message: salva uma uma mensagem enviada pelo o usuário e notifica outros usuários.
- register_access: registra o acesso diário de um usuário
- save_feeling: faz o checking no diário de sentimentos do usuário
- save_user: salvar os dados do usuário e notifica novos usuários

### Requisitos

- [Go 1.16](https://go.dev/)
- [Firebase console](https://firebase.google.com/)

### Deploy

- Crie o arquivo `firebase_crendentials.json` com os dados de administração do console Firebase.

- [Baixe](https://cloud.google.com/sdk/docs/install) e configure o gcloud console:
```bash
gcloud login # faça o login pelo o google
gcloud config set project <project-id> # defina o projeto que será trabalhado
```

- Execute o comando:
```bash
 gcloud functions deploy <path> --entry-point <function> --runtime go116 --trigger-http --allow-unauthenticated --region southamerica-east1
```
*path*: endpoint de acesso a função
*function*: função dentro do package functions

