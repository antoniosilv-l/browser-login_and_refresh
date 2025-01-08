# 🌐 Browser, Logar e Atualizar 

## **📖 Descrição da Quest**
 
A missão consistia em exibir dashboards do nas TVs do escritório. Essas TVs estavam conectadas a mini-desktops, onde não era possível instalar o **Python** 🐍.

Sendo assim o desafio era alternar entre as abas e atualizar as informações de forma automatizada.

---

## **🎰 Resolução**

A solução mais simples, embora não tão sofisticada, foi criar um script `.bat` responsável por:

1. **Finalizar o navegador** caso estivesse em execução.
2. **Abrir as abas** com os dashboards que deveriam ser exibidos.
3. Chamar os demais scripts em **VBS**.

Os arquivos `.vbs` eram encarregados de:

- **Inserir login e senha** automaticamente.
- **Alternar entre as abas** do navegador.
- **Atualizar as páginas** periodicamente.
- Observar o **horário comercial** e encerrar a execução fora desse período.

Essa abordagem permitiu automatizar o processo sem a necessidade de instalar softwares adicionais.

---

## **⚠️ Pontos de Atenção**

Alguns aspectos importantes a considerar ao utilizar este script:

- **Sincronização do navegador:**

  - O script pode falhar ao inserir o login e a senha se o navegador demorar para abrir as abas.

- **Segurança do arquivo ****`.env`****:**

  - Certifique-se de manter o arquivo `.env` com o usuário e senha em um local seguro, como uma pasta acessível apenas por administradores. Isso ajuda a reduzir o risco de vazamento de credenciais.

---

<img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExNHdlaHV6d216MjFhZWg1MDlpa294d3R2b20yejBmdnFlNjRwajVnaSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/CYrgIU2QkrQE1rIzHC/giphy.gif" alt="Automacao?" width="100%">