if ps aux | grep [s]sh-agent 2>&1 > /dev/null ; then
    echo "SSH Agent already configured"
else
    echo "Configuring SSH Agent"
    eval $(ssh-agent -a ~/.ssh-agent.sock)
    ssh-add ~/.ssh/id_rsa
fi

source ~/.bashrc
