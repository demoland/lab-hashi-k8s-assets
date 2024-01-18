# Learn Layer 7 Observability with Prometheus, Grafana, and Kubernetes
This repo contains application and dashboard definitions for the [Consul Layer 7 observability with Kubernetes guide located at learn.hashicorp.com](https://learn.hashicorp.com/tutorials/consul/kubernetes-layer7-observability)

To fully deploy the app run the following scripts in order. Assumes you have a Kubernetes cluster available.  Tested with Minikube and Kind.

`helm install -f helm/consul-values.yaml consul hashicorp/consul --version "0.23.1" --wait`

`helm install -f helm/prometheus-values.yaml prometheus stable/prometheus --version "11.7.0" --wait`

`helm install -f helm/grafana-values.yaml grafana stable/grafana --version "5.3.6" --wait`

`kubectl apply -f app`

To simulate a load on the applicaton, run:

```
kubectl apply -f traffic.yaml
```
