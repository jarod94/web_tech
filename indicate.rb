# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンス（反応）を返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Extraire les données reçues cgi['input'] et les assigner à une variable locale.
  # Extraire des informations du repère 'input'.
  get = cgi['input']
  # HTML pour renvoyer une réponse.
  "<html>
    <body>
      <p>La chaîne reçue sera la suivante</p>
      <p>chaîne de caractères：#{get}</p>
    </body>
  </html>"
}
