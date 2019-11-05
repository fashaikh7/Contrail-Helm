#!/bin/bash

#Deploying Contrail Components

echo Deploy Contrail CNI 
helm install ./contrail-cni/ --name cni-1909.30
echo Set Kubernetes tokens
helm install ./kube-token/ --name kube-token-1909.30
echo Deploy Contrail kube manager
helm install ./contrail-kubemgr/ --name kube-manager-1909.30
echo Deploy Contrail analytics alarm
helm install ./contrail-analytic-alarm/ --name analytics-alarm-1909.30
echo Deploy Contrail analytic snmp
helm install ./contrail-analytic-snmp/ --name analytics-snmp-1909.30
echo Deploy Contrail webui
helm install ./contrail-webui/ --name webui-1909.30
echo Deploy Contrail agents
helm install ./contrail-agent/ --name agent-1909.31

