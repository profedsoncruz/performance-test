#!/bin/bash

now=`date +"%m.%d.%Y-%H.%M.%S"`

ROOT="https://apuracao.gazetadopovo.com.br";

### Landing on Gazeta do Povo Apuração
$(npm bin)/sitespeed.io $ROOT --browsertime.headless --browsertime.timeouts.pageCompleteCheck 10000 --browsertime.pageCompleteCheck 'return (document.getElementsByClassName("c-sumario").length > 0)' -n 10 --outputFolder ../reports/"apuracao-gazeta-$now"
