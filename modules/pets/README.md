# Projeto Terraform - Módulos de Pets

Este projeto usa o Terraform para gerar arquivos locais e criar arquivos com nomes aleatórios com base em nomes de animais de estimação, utilizando o provedor `random` e o recurso `local_file` para salvar esses nomes em arquivos. Ele usa **módulos** no Terraform para modularizar a criação desses recursos, tornando o código reutilizável e mais organizado.

<br><br>

# Módulo "pets"

Este módulo cria dois recursos do tipo `random_pet`, e dois recursos do tipo `local_file`, com os seguintes detalhes:

- Os recursos `random_pet` criam dois nomes aleatórios de pets.
- Os recursos `local_file` geram arquivos locais com o nome dos pets aleatórios e contendo o nome do pet aleatório dentro de cada arquivo. 

Além disso, o módulo utiliza a variável `prefix_file` para adicionar um prefixo personalizado ao nome do arquivo gerado.

`prefix_file` obrigatóriamente deve ser especificado quando o módulo for reaproveitado.

## Variáveis

- **prefix_file** (obrigatória): Prefixo a ser utilizado nos arquivos de saída gerados.


## Saídas

- **./output-files/\*-pet-\***: Nome do primeiro arquivo gerado.
- **./output-files/\*-pet-\***: Nome do segundo arquivo gerado.
- **Outputs no terminal**: Será exibido como output no terminal o nome de cada pet gerado


<br><br>

# Como preparar o ambiente

### Pré-requisitos

- Terraform 1.0 ou superior
- Acesso ao ambiente de execução (local)

### Clone este repositório

```bash
git clone https://github.com/IvanJunior-code/terraform_modules
cd terraform_modules
```
<br>


# Como chamar o módulo "pets" e executar

1. **Chamar o módulo no `main.tf`**

Para utilizar o módulo `pets`, você precisa chamar o módulo dentro do seu arquivo `main.tf` e passar o parâmetro `prefix_file`. Abaixo está um exemplo de como fazer isso:

```hcl
module "pets" {
  source = "./modules/pets"                   # Caminho para o diretório onde o módulo "pets" está localizado
  prefix_file = "prefix0${count.index}"        # Define o valor de "prefix_file" com base no índice da repetição (count.index)
  count = 4                                    # Cria 4 instâncias do módulo "pets"
}
```
<br>

2. **Inicialize o Terraform**

Inicialize o Terraform para baixar os plugins necessários com o comando:
```bash
terraform init
```
<br>

3. **Execute o plan do Terraform**

```bash
terraform plan
```
<br>

4. **Aplique as mudanças**

Aplique as mudanças no ambiente de execução com o comando **apply** e depois confirme com **yes**:
```bash
terraform apply
```
<br>