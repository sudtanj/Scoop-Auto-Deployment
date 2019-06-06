$cmdName="scoop"
if (Get-Command $cmdName -errorAction SilentlyContinue){
    
} else {
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    [environment]::setEnvironmentVariable('SCOOP','D:\Applications\Scoop','User')
    $env:SCOOP='D:\Applications\Scoop'
    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
}
scoop install git
scoop bucket add scoop-Ash258 https://github.com/Ash258/scoop-Ash258
scoop bucket add scoop-bucket-devbox https://github.com/dennislloydjr/scoop-bucket-devbox
scoop bucket add dorado https://github.com/h404bi/dorado
scoop bucket add scoop-extras https://github.com/lukesampson/scoop-extras
scoop bucket add scoop-java https://github.com/se35710/scoop-java
scoop bucket add scoop-jfut https://github.com/jfut/scoop-jfut.git
scoop bucket add scoop-bucket https://github.com/lurdan/scoop-bucket
scoop bucket add scoop-nonportable https://github.com/oltolm/scoop-nonportable
scoop bucket add scoop-apps https://github.com/biehlermi/scoop-apps
scoop bucket add scoops https://github.com/rasa/scoops
scoop bucket add scoop-user https://github.com/excitoon/scoop-user.git
scoop bucket add versions https://github.com/scoopinstaller/versions
scoop install 7zip