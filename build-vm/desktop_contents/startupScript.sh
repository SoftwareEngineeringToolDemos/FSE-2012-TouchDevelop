#!/bin/bash
cd $HOME/TouchDevelop
sudo jake local &
xdg-open http://localhost:4242/editor/local#td_deployment_key=5fc32a664033ec5b8d853eb9352dd312fd4b91b3
