    retail-product:
      description: Retail Product
      port: 12002
      jmxPort: 22002
      mgmtPort: 42002
      jar: retail-product-service_current.jar      
      jvm_opts:  -Denvironment={{ grains.java_environment }}{%- if (grains.java_environment != 'qa') %} -Ddb_suffix={{ grains.java_environment }}{%- endif%} -Dregion=eu -Dremote_dc1={%- if (grains.java_environment != 'qa') %}aws{%- else%}lin{%- endif%} -Dremote_dc2=aws -Dspring.profiles.active="{{ grains.java_environment }}" -Dspring.cloud.config.label="develop" -javaagent:/srv/apps/libs/newrelic.jar -Dnewrelic.environment=aws-eu-qa -Xss512k -Xmx512m -XX:+UseG1GC -Dsun.net.inetaddr.ttl=60 -XX:+PrintGC -XX:+PrintGCDateStamps -verbose:gc -XX:+HeapDumpOnOutOfMemoryError -XX:-OmitStackTraceInFastThrow
      GC_logs: true
      newrelic_config_file: config/newrelic.yml
      heap_dump: true
      bootstrap_config: true
      fail_timeout: 10s
      stopwaitsecs: 30
      user: deploy
      group: java_developer
      upstreams:
        {{ grains.java_upstreams }}
    foo:
      description: null
      port: 1null2
      jmxPort: 2null2
      mgmtPort: 4null2
      jar: foo-service_current.jar
      jvm_opts: -Denvironment={{ grains.java_environment }}{%- if (grains.java_environment != 'qa') %} -Ddb_suffix={{ grains.java_environment }}{%- endif%} -Dregion=eu -Dremote_dc1={%- if (grains.java_environment != 'qa') %}aws{%- else%}lin{%- endif%} -Dremote_dc2=aws -Dspring.profiles.active="{{ grains.java_environment }}" -Dspring.cloud.config.label="develop" -javaagent:/srv/apps/libs/newrelic.jar -Dnewrelic.environment=aws-eu-qa -Xss512k -Xmx512m -XX:+UseG1GC -Dsun.net.inetaddr.ttl=60 -XX:+PrintGC -XX:+PrintGCDateStamps -verbose:gc -XX:+HeapDumpOnOutOfMemoryError -XX:-OmitStackTraceInFastThrow
      GC_logs: true
      newrelic_config_file: config/newrelic.yml
      heap_dump: true
      bootstrap_config: true
      fail_timeout: 10s
      stopwaitsecs: 30
      user: deploy
      group: java_developer
      upstreams:
        {{ grains.java_upstreams }}
