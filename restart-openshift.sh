echo ">>> Restart infranode:atomic-openshift-node"
ssh infranode.openshift.com "systemctl restart docker; systemctl restart atomic-openshift-node"
echo ">>> Restart charlie:atomic-openshift-node"
ssh nodecharlie.openshift.com "systemctl restart docker; systemctl restart atomic-openshift-node"
echo ">>> Restart bravo:atomic-openshift-node"
ssh nodebravo.openshift.com "systemctl restart docker; systemctl restart atomic-openshift-node"
echo ">>> Restart alpha:atomic-openshift-node"
ssh nodealpha.openshift.com "systemctl restart docker; systemctl restart atomic-openshift-node"
echo ">>> Restart atomic-openshift-master"
systemctl restart docker; systemctl restart atomic-openshift-node; systemctl restart atomic-openshift-master