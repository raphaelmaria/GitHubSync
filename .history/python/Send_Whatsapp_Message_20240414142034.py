import csv
import requests

def enviar_mensagem_whatsapp(nome, numero, apt, torre, vaga_sorteada):
    mensagem = f"Olá {nome}, a vaga de moto {vaga_sorteada}, localizada {local} foi atribuida ao apto {apt} /T {torre} em seu nome e será cobrada no próximo boleto do condominio."
    url_whatsapp = f"https://api.whatsapp.com/send?phone={numero}&text={mensagem}"
    requests.get(url_whatsapp)
    
def main():
    with open('teste.csv', 'r') as arquivo_csv:
        leitor_csv = csv.DictReader(arquivo_csv)
        for linha in leitor_csv:
            nome = linha['Nome']
            numero = linha['Numero']
            apt = linha['Apt']
            torre = linha['Torre']
            vaga_sorteada = linha['Vaga']
            enviar_mensagem_whatsapp(nome, numero, apt, torre, vaga_sorteada)
           
if __name__ == "__main__":
    main()            