git clone --depth=1 -b main https://gitee.com/yoimiya-kokomi/Yunzai-Bot.git ${YUNZAI}
cd ${YUNZAI} 
git clone --depth=1 https://github.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
if [[ -f "./config/config/redis.yaml" ]] && [[ ! -f "./config/config/.keep" ]]; then
    sed -i 's/127.0.0.1/redis/g' ./config/config/redis.yaml
    echo -e "\n  修改Redis地址完成~  \n"
fi

for plugin in `ls plugins`
do
    PLUGIN_PATH="plugins/${plugin}"
    if [ -d "$PLUGIN_PATH/.git" ]; then

        cd ${PLUGIN_PATH}

        if [[ -n $(git status -s) ]]; then
            echo -e " ${Warn} ${YellowBG} ${plugin} 有修改，尝试暂存后更新。${Font}"
            git add .
            git stash
            git pull origin master --allow-unrelated-histories --rebase
            git stash pop
        else
            git pull origin master --allow-unrelated-histories
        fi

    fi
done

set -e

cd ${YUNZAI} 
pnpm install -P
"$@"