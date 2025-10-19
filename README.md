# RepairTI
🧰 MENU DE SUPORTE TÉCNICO T.I – Fsennax

⚙️ Sobre o Projeto
Esta ferramenta foi desenvolvida por Fsennax para automatizar rotinas de manutenção e suporte técnico em sistemas Windows.
O script fornece um menu interativo no prompt de comando (CMD) que reúne em um só lugar as principais ferramentas de diagnóstico, limpeza e reparo do sistema operacional.

#🚀 Funcionalidades Principais
O menu inclui diversas opções úteis para técnicos e administradores de sistemas, como:

| Nº | Função                                      | Descrição                                                |
| -- | ------------------------------------------- | -------------------------------------------------------- |
| 1  | **Verificar e Reparar Disco (CHKDSK)**      | Corrige erros no disco rígido.                           |
| 2  | **Reparar Arquivos de Sistema (SFC)**       | Verifica e restaura arquivos de sistema corrompidos.     |
| 3  | **Limpar Arquivos Temporários e Cache DNS** | Remove arquivos temporários e limpa o cache de DNS.      |
| 4  | **Diagnóstico de Memória**                  | Executa a ferramenta de verificação de memória RAM.      |
| 5  | **Verificar Conectividade de Rede (Ping)**  | Testa a comunicação com um endereço IP ou domínio.       |
| 6  | **Rastreamento de Rota (Tracert)**          | Analisa o caminho percorrido até um destino de rede.     |
| 7  | **Abrir Gerenciador de Tarefas**            | Abre o Task Manager do Windows.                          |
| 8  | **Backup de Drivers (Lista)**               | Lista todos os drivers instalados no sistema.            |
| 9  | **Abrir Windows Update**                    | Acesso direto às atualizações do sistema.                |
| 10 | **Informações do Sistema**                  | Exibe detalhes do hardware e software.                   |
| 11 | **Limpar Cache DNS**                        | Limpa e reinicializa o cache DNS do Windows.             |
| 12 | **Reiniciar Serviços de Rede**              | Reinicia os serviços e configurações de rede.            |
| 13 | **Desfragmentar Disco**                     | Melhora o desempenho reorganizando arquivos no disco.    |
| 14 | **Gerenciar Usuários Locais**               | Abre o console de gerenciamento de usuários locais.      |
| 15 | **Verificar Integridade (DISM)**            | Repara a imagem do sistema operacional.                  |
| 16 | **Ver Logs de Eventos**                     | Abre o Visualizador de Eventos do Windows.               |
| 17 | **Testar Velocidade Básica**                | Faz um teste rápido de conexão via ping.                 |
| 18 | **Criar Ponto de Restauração**              | Cria automaticamente um ponto de restauração do sistema. |
| 19 | **Executar Comando Personalizado**          | Permite rodar qualquer comando manualmente.              |
| 20 | **Atualizar Programas com Winget**          | Atualiza todos os programas instalados via Winget.       |
| 21 | **Manutenção Completa (Automática)**        | Executa uma série de rotinas de manutenção em sequência. |
| 22 | **Abrir Ferramentas do Sistema**            | Abre o Painel de Controle.                               |
| 23 | **Sair**                                    | Fecha o programa.                                        |

💻 Como Usar
1- Baixe o arquivo menu_suporte_TI.bat (ou o nome que você preferir).

2- Execute como Administrador (clique com o botão direito > “Executar como administrador”).

3- Escolha uma opção digitando o número correspondente e pressione Enter.

⚠️ Algumas opções exigem permissões elevadas (Administrador), especialmente as que modificam configurações do sistema.

🧩 Requisitos
Sistema Operacional: Windows 10 ou superior

Permissões: Administrador

Ferramentas nativas: CMD, PowerShell, CHKDSK, SFC, DISM, Winget

🛠️ Estrutura do Código
O script é baseado em Batch Script (.bat) e utiliza comandos internos do Windows, além de chamadas do PowerShell e utilitários como:

chkdsk, sfc, dism, defrag, ping, tracert, ipconfig, netsh, mdsched, pnputil

powershell (para criação de pontos de restauração e atualização via Winget)
