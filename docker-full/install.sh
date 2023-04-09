set -e

mkdir -p ${YUNZAI} ${HOME} ${DEFAULT}/home

git clone --depth=1 -b main https://gitee.com/yoimiya-kokomi/Yunzai-Bot.git ${YUNZAI}
cd ${YUNZAI} 
git clone --depth=1 https://github.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/

cp ./config/default_config/redis.yaml ./config/config
sed -i 's/127.0.0.1/redis/g' ./config/config/redis.yaml
echo -e "\n  修改Redis地址完成~  \n"

pnpm install -P
mv config plugins ${DEFAULT}