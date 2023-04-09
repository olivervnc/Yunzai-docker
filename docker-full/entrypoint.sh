if [[ ! -d ${HOME} ]] || [[ -z `ls -A ${HOME}` ]]; then
    if [[ -d ${DEFAULT}/home ]] && [[ ! -z `ls -A ${DEFAULT}/home` ]]; then
        echo "copying default home folder"
        cp ${DEFAULT}/home/{,.[^.],..?}* ${HOME} -r
    fi
fi

cd ${YUNZAI} 

if [[ ! -d config ]] || [[ -z `ls -A config` ]]; then
    echo "copying default config folder"
    cp ${DEFAULT}/config ./ -r
fi

cp ${DEFAULT}/plugins ./ -r

pnpm install -P
node app