cd ${YUNZAI} 

if [[ ! -d config ]] || [[ -z `ls -A config` ]]; then
    echo "copying default config folder"
    cp ${DEFAULT}/config ./ -r
fi

if [[ ! -d ${HOME} ]] || [[ -z `ls -A ${HOME}` ]]; then
    echo "copying default home folder"
    cp ${DEFAULT}/home/* ${HOME} -r
fi

cp ${DEFAULT}/plugins ./ -r

pnpm install -P
node app