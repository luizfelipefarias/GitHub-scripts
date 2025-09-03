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
