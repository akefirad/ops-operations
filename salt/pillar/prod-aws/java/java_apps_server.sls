    retail-product:
      description: Retail Product
      port: 12002
      jmxPort: 22002
      mgmtPort: 42002
      jar: retail-product-service_current.jar      
      jvm_opts: -Dspring.profiles.active="production-aws" -Dspring.cloud.config.label="master" -javaagent:/srv/apps/libs/newrelic.jar -Dnewrelic.environment=aws-eu-prod -Xss512k -Xmx512m -XX:+UseG1GC -Dsun.net.inetaddr.ttl=60 -XX:+PrintGC -XX:+PrintGCDateStamps -verbose:gc -XX:+HeapDumpOnOutOfMemoryError -XX:-OmitStackTraceInFastThrow
      GC_logs: true
      newrelic_config_file: config/newrelic.yml
      heap_dump: true
      bootstrap_config: true
      fail_timeout: 10s
      stopwaitsecs: 30
      user: deploy
      group: java_developer
      upstreams:
        - 172.18.5.25
        - 172.18.6.60
        - 172.18.7.39
    foo:
      description: null
      port: 1null2
      jmxPort: 2null2
      mgmtPort: 4null2
      jar: foo-service_current.jar
      jvm_opts: -Dspring.profiles.active="production-aws" -Dspring.cloud.config.label="master" -javaagent:/srv/apps/libs/newrelic.jar -Dnewrelic.environment=aws-eu-prod -Xss512k -Xmx512m -XX:+UseG1GC -Dsun.net.inetaddr.ttl=60 -XX:+PrintGC -XX:+PrintGCDateStamps -verbose:gc -XX:+HeapDumpOnOutOfMemoryError -XX:-OmitStackTraceInFastThrow
      GC_logs: true
      newrelic_config_file: config/newrelic.yml
      heap_dump: true
      bootstrap_config: true
      fail_timeout: 10s
      stopwaitsecs: 30
      user: deploy
      group: java_developer
      upstreams:
        - 172.18.5.25
        - 172.18.6.60
        - 172.18.7.39
