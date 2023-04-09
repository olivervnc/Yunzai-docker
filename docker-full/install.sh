mkdir -p ${YUNZAI} ${HOME} ${DEFAULT}

git clone --depth=1 -b main https://gitee.com/yoimiya-kokomi/Yunzai-Bot.git ${YUNZAI}
cd ${YUNZAI} 
git clone --depth=1 https://github.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
pnpm install -P

if [ -f "./config/config/redis.yaml" ]; then
    sed -i 's/127.0.0.1/redis/g' ./config/config/redis.yaml
    echo -e "\n  修改Redis地址完成~  \n"
fi

mv config plugins ${DEFAULT}
mkdir ${DEFAULT}/home
mv ${HOME}/. ${DEFAULT}/home