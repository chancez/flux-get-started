local promtail = import 'promtail/promtail.libsonnet';

promtail {
  _config+:: {
    namespace: 'loki',

    promtail_config+: {
      clients: [
        {
          scheme:: 'https',
          hostname:: 'logs-us-west1.grafana.net',
          username:: 'user-id',
          password:: 'password',
          external_labels: {},
        },
      ],
      container_root_path: '/var/lib/docker',
    },
  },
  promtail_daemonset+: {
    apiVersion: 'apps/v1',
    spec+: {
      selector: {
        matchLabels: $.promtail_daemonset.spec.template.metadata.labels,
      },
    },
  },
}
