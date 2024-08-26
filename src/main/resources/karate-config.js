function configuration(){
    var configuration = {
    name: "Dmytro",
    baseUrl: "https://reqres.in"
    };

    var env = karate.env

    if(env == 'qa'){
    configuration.name = "Dima"
    configuration.baseUrl = "https://reqres.in/api/qa";
    }else if(env == 'stage'){
    configuration.baseUrl = "https://reqres.in/api/stage";
    }else if(env == 'default'){
    configuration.baseUrl = "https://reqres.in/api";
    }

karate.configure('connectTimeout', 5000);
karate.configure('readTimeout', 5000);

    return configuration;
}