# Git Scripts Config

Scripts práticos para configurar e remover usuário e e-mail global do Git em Windows (PowerShell e CMD).

## 👤 Dados configurados

- **Nome completo:** Luiz Felipe Farias Braz Da Silva
- **Usuário Git:** luizfelipefarias
- **E-mail:** luizfelipefariasbraz@gmail.com

---

## 📌 Scripts incluídos

### ✅ PowerShell

#### configurar-git.ps1
Configura automaticamente seu nome completo e e-mail Git globalmente.

```powershell
# configurar-git.ps1
# Script para configurar usuário e e-mail do Git globalmente

$name = "luizfelipefarias"
$email = "luizfelipefariasbraz@gmail.com"

git config --global user.name "$name"
git config --global user.email "$email"

Write-Host "Configurações definidas com sucesso!"
Write-Host "Usuário Git: $name"
Write-Host "E-mail Git: $email"

#Execute
./configurar-git.ps1


# remover-git-usuario.ps1
# Script para remover as configurações globais user.name e user.email do Git

$name = git config --global user.name

if ($name) {
    git config --global --unset user.name
    Write-Host "A configuração global 'user.name' foi removida com sucesso."
} else {
    Write-Host "Nenhuma configuração global de 'user.name' encontrada."
}

$email = git config --global user.email

if ($email) {
    git config --global --unset user.email
    Write-Host "A configuração global 'user.email' foi removida com sucesso."
} else {
    Write-Host "Nenhuma configuração global de 'user.email' encontrada."
}


#Execute
./remover-git-usuario.ps1



#CMD-definir globalmente 

@echo off
REM cmd-global.bat
REM Script para configurar usuário e e-mail do Git globalmente

set name=luizfelipefarias
set email=luizfelipefariasbraz@gmail.com

git config --global user.name "%name%"
git config --global user.email "%email%"

echo Configuracoes definidas com sucesso!
echo Usuario Git: %name%
echo E-mail Git: %email%
pause

#CMD-Remover
@echo off
REM cmd-remover.bat
REM Script para remover as configuracoes globais user.name e user.email do Git

git config --global --get user.name >nul 2>&1
if %errorlevel%==0 (
    git config --global --unset user.name
    echo A configuracao global 'user.name' foi removida com sucesso.
) else (
    echo Nenhuma configuracao global de 'user.name' encontrada.
)

git config --global --get user.email >nul 2>&1
if %errorlevel%==0 (
    git config --global --unset user.email
    echo A configuracao global 'user.email' foi removida com sucesso.
) else (
    echo Nenhuma configuracao global de 'user.email' encontrada.
)
pause
