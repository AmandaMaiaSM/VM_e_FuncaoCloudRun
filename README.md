
# Projeto: VM e Função Cloud Run
O projeto utiliza Google Cloud Platform (GCP) e Terraform para implementar uma VM e uma função no Cloud Run, que realiza a exibição de um anúncio de animal que se encontra perdido do seu lar. O projeto vai armazena o código da função em um bucket e configurar uma instância de VM para acionar a função automaticamente.

# Tecnologias Utilizadas
1- Terraform        2- Google Cloud Platform (GCP)       3- Compute Engine (VM)

# Arquitetura e Funcionalidades
## 1. Bucket de Armazenamento:  
  O arquivo function-source.zip, com o código da função que vai ser utilizada no Cloud Run.
## 2. Função Cloud Run: 
  Tem uma  página HTML com informações do pet perdido. A função, acionada via URL pública, que retorna uma página com detalhes como imagens, descrição e informações do pet e conatdo.
  
# Passo a Passo de Implementação
1. Inicialize o Terraform:    terraform init
2. Crie o Plano de Execução: terraform plan
3. Aplique o Plano para Criar os Recursos: terraform apply

# Verifique o Funcionamento:
### Acesse a função pelo navegador usando a URL:

  https://northamerica-northeast1-noble-anvil-439219-a9.cloudfunctions.net/animalsss
  
### No Cloud Shell, execute:

  curl -X GET "https://northamerica-northeast1-noble-anvil-439219-a9.cloudfunctions.net/animalsss"


# Imagens do Funcionamento
 1. Função Cloud Run
  ![funcao](https://github.com/user-attachments/assets/1515b567-97c3-4a17-98f8-1de8b1c33df4)
  ![verificnapURL](https://github.com/user-attachments/assets/fb6ae9d4-611a-445b-ba00-c6246a86bd69)

2. Funcionamento da VM
  ![vm_rodando ](https://github.com/user-attachments/assets/6e41bf3e-9e55-4a22-b6c5-ad7de3ed0818)

3. Cloud Shell mostrando o conteúdo do arquivo ZIP
   ![chamandofuncao_01](https://github.com/user-attachments/assets/bdc7a3b2-7683-4c5c-a7fc-897034e78953)
   ![camandoaduncao_02](https://github.com/user-attachments/assets/ae9ebc5c-5d18-46e3-a5d2-a43dfa7a7eff)


