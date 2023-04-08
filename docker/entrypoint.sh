cd ${YUNZAI} 

if [[ ! -d config ]] || [[ -z `ls -A config` ]]; then
    echo "copying default config folder"
    cp ${DEFAULT}/config ./ -r
fi

if [[ ! -d plugins ]] || [[ -z `ls -A plugins` ]]; then
    echo "copying default plugin folder"
    cp ${DEFAULT}/plugins ./ -r
fi

pnpm install -P
node app