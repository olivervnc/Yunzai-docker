set -e
cd ${YUNZAI} 

if [[ ! -d config ]] || [[ -z `ls -A config` ]]; then
    echo "copying default config folder"
    cp ${DEFAULT}/config ./ -r
fi

cp ${DEFAULT}/plugins ./ -r

pnpm install -P
"$@"