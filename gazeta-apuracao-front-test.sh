#!/bin/bash

now=`date +"%m.%d.%Y-%H.%M.%S"`

ROOT="https://apuracao.gazetadopovo.com.br";

### Landing on Inbox All Requests Page
$(npm bin)/sitespeed.io $ROOT --browsertime.headless --browsertime.timeouts.pageCompleteCheck 10000 --browsertime.pageCompleteCheck 'return (document.getElementsByClassName("c-sumario").length > 0)' -n 10 --outputFolder ../reports/"apuracao-gazeta-$now"