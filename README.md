Script para configurar usuário e e-mail do Git globalmente e excluir
```bash
# Script para configurar usuário e e-mail do Git globalmente

# Solicita o nome de usuário
$name = Read-Host "Digite seu nome para o Git (ex: João Silva)"

# Solicita o e-mail
$email = Read-Host "Digite seu e-mail para o Git (ex: joao@email.com)"

# Define as configurações globais
git config --global user.name "$name"
git config --global user.email "$email"

# Exibe confirmação
Write-Host "Configurações definidas com sucesso!"
Write-Host "Usuário Git: $name"
Write-Host "E-mail Git: $email"

Salve como configurar-git.ps1
./configurar-git.ps1

# Script para remover as configurações globais user.name e user.email do Git

# Verifica se user.name está configurado
$name = git config --global user.name

if ($name) {
    git config --global --unset user.name
    Write-Host "A configuração global 'user.name' foi removida com sucesso."
} else {
    Write-Host "Nenhuma configuração global de 'user.name' encontrada."
}

# Verifica se user.email está configurado
$email = git config --global user.email

if ($email) {
    git config --global --unset user.email
    Write-Host "A configuração global 'user.email' foi removida com sucesso."
} else {
    Write-Host "Nenhuma configuração global de 'user.email' encontrada."
}


Salve como remover-git-usuario.ps1
./remover-git-usuario.ps1
