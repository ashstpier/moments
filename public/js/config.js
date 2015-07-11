System.config({
  "baseURL": "/js",
  "transpiler": "traceur",
  "paths": {
    "*": "*.js",
    "moments/*": "lib/*.js",
    "github:*": "jspm_packages/github/*.js",
    "npm:*": "jspm_packages/npm/*.js"
  }
});

System.config({
  "map": {
    "angular": "github:angular/bower-angular@1.4.2",
    "angular-animate": "github:angular/bower-angular-animate@1.4.2",
    "angular-ui-router": "github:angular-ui/ui-router@0.2.15",
    "jquery": "github:components/jquery@2.1.4",
    "traceur": "github:jmcriffey/bower-traceur@0.0.88",
    "traceur-runtime": "github:jmcriffey/bower-traceur-runtime@0.0.88",
    "github:angular-ui/ui-router@0.2.15": {
      "angular": "github:angular/bower-angular@1.4.2"
    },
    "github:angular/bower-angular-animate@1.4.2": {
      "angular": "github:angular/bower-angular@1.4.2"
    },
    "github:jspm/nodelibs-process@0.1.1": {
      "process": "npm:process@0.10.1"
    }
  }
});

