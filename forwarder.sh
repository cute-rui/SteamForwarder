#!/bin/bash
mv ./h2o /usr/local/bin/
mv ./h2o.conf /etc/
mkdir /usr/local/share/h2o
mv ./ca-bundle.crt /usr/local/share/h2o
mv ./certs/steamcommunity-fullchain.crt /usr/local/share/h2o/
mv ./certs/steamcommunity.key /usr/local/share/h2o/
