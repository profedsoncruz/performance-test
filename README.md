Conforme eu comentei na nossa aula de sábado, fiquei de enviar para vocês um código de exemplo para um script para execução da ferramenta sitespeed.io. Segue abaixo um exemplo:

#!/bin/bash

now=`date +"%m.%d.%Y-%H.%M.%S"`

ROOT="https://apuracao.gazetadopovo.com.br";

### Landing on Inbox All Requests Page
$(npm bin)/sitespeed.io $ROOT --browsertime.headless --browsertime.timeouts.pageCompleteCheck 10000 --browsertime.pageCompleteCheck 'return (document.getElementsByClassName("c-sumario").length > 0)' -n 10 --outputFolder ../reports/"apuracao-gazeta-$now"

A linha de comando do script é grande mesmo. Ela termina na palavra $now". Explicando o código acima: Ele é um script shell (ou shell script), que roda apenas em um terminal do tipo unix, como linux ou mac os.

A linha #!/bin/bash  é apenas um parâmetro usado em qualquer script shell, com o caminho para o interpretador bash.

A linha   now=`date +"%m.%d.%Y-%H.%M.%S"` é uma variável criada para pegar o timestamp do sistema data com dia, mês e ano e hora, minuto segundo. Esse dado é usado no nome do arquivo, para geração do relatório.

A linha ROOT="https://apuracao.gazetadopovo.com.br"; informa a URL onde o teste será executado, mapeada para a variável chamada ROOT.

Finalmente, a linha
$(npm bin)/sitespeed.io $ROOT --browsertime.headless --browsertime.timeouts.pageCompleteCheck 10000 --browsertime.pageCompleteCheck 'return (document.getElementsByClassName("c-sumario").length > 0)' -n 10 --outputFolder ../reports/"apuracao-gazeta-$now"

é a linha principal de execução da ferramenta. Onde é passado a URL de acesso (via variável) e os parametros browsertime específicos que o teste usa (sugiro olhar a documentação da ferramenta para conhecer esses parâmetros).

A parte que tem   'return (document.getElementsByClassName("c-sumario").length > 0)' é a condição de parada do teste. É um comando que verifica em javascript que o elemento específico mapeado é retornado (length >0). 
O que vem depois é a quantidade de execuções (10) e o caminho para o relatório.
