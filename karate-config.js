function fn() {   
    // don't waste time waiting for a connection or if servers don't respond within 15 seconds
    karate.configure('connectTimeout', 15000);
    karate.configure('readTimeout', 15000);
    karate.log('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
    karate.log('                    LOADED VARIABLES                       ');    
    //propriedades do JAVA
    //karate.log('JAVA_HOME:', karate.properties['java.home']);
    //karate.log('JAVA_CLASS_PATH:', karate.properties['java.class.path']);    
    //recupera todas sa variáveis
    //karate.log('dump:', java.lang.System.getenv()); 
    //url base
    karate.log('URL_BASE:', java.lang.System.getenv('URL_BASE')); 
    karate.log('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');    

    //estrutura de configuração
    var config = { 
      urlBase: java.lang.System.getenv('URL_BASE')
    };
    
    //retorna as configurações
    return config;
  }