# Converte Moedas

Aplicação para conversão de moedas, feita em Flutter, usando arquitetura de gerência de estado MobX e padrão de arquitetura de projeto MVC, para carregar as taxas de câmbio foi usado a  API do RatesAPI (https://ratesapi.io/)


## Estrutura de Arquivos

* **components**
  * componentes comunente utlizado no projeto.

* **controllers**
  * controllers, onde está arquivos responsaveis por controlar nossa tela.

* **model**
  * model é onde fica nosso modelo de dados.

* **repositories**
  * repositories é onde obtem os dados pela API.

* **service**
  * service é onde fica concentrada a regra de negócio, no caso onde foi feito o cálculo utilizando os dados obtidos da API e os dados inserido pelo usuário.

* **stores**
  * stores concentra o estado global do aplicativo, sempre que o estado da tela é alterado são os objetos (*singleton*) dessas classes que são manipuladas. Portanto, as ações e observações do Mobx está centrada nessa classe.

* **themes**
  * themes é onde esta o estilo a ser seguido na aplicação, como fontes e cores.

* **views**
  * view é onde esta a tela UI.

* **widgets**
  * widgets é onde esta os widgets utilizados na tela do projeto.