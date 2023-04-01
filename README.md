<!DOCTYPE html>
<html>
<body>
<h1>Modelo de Deploy do Flask com Apache, Reverse Proxy e HTTPS</h1>
<p>Este repositório contém um modelo de deploy para uma aplicação Flask, usando o servidor web Apache como proxy reverso e HTTPS como protocolo de segurança.</p>
<h2>Pré-requisitos</h2>
<p>Antes de começar, você precisará ter os seguintes itens instalados em seu sistema:</p>
<ul>
<li>Docker</li>
<li>Docker Compose</li>
</ul>
<h2>Instalação e configuração</h2>
<p>Clone este repositório em sua máquina local:</p>
<div class="highlight highlight-source-shell">
<pre><code>git clone https://github.com/danmat10/apache-https-flask.git/code></pre>
</div>
<p>Acesse o diretório clonado:</p>
<div class="highlight highlight-source-shell">
<pre><code>cd apache-https-flask</code></pre>
</div>
<p>Copie os certificados para o caminho  apache/apache_ssl.crt e apache/apache_ssl.key</p>
<p>Inicie o servidor com o seguinte comando:</p>
<div class="highlight highlight-source-shell">
<pre><code>sudo docker-compose up</code></pre>
</div>
<p>Acesse a URL https://localhost ou https://ip_da_máquina em um navegador para testar a aplicação.</p>
<h2>Observações</h2>
<p>É importante lembrar que, por padrão, o Apache é executado na porta 443. Certifique-se de que esta porta esteja disponível em sua máquina antes de iniciar o servidor.</p>
<p>Os arquivos apache_ssl.crt e apache_ssl.key devem ser gerados por uma autoridade de certificação confiável para garantir a segurança de sua aplicação.</p>
<p>Este modelo de deploy é adequado para aplicações de pequeno e médio porte. Para aplicações maiores, é recomendável o uso de ferramentas de orquestração de containers, como o Kubernetes.</p>
</body>
</html>
