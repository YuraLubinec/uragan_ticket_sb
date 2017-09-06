var mainPage = angular.module('mainPage', []);

mainPage.directive('sectorAsc', function() {  
  return {
    templateUrl : 'directives.templates/sectorASC.html'
  };
});

mainPage.directive('sectorDesc', function() {  
  return {
    templateUrl : 'directives.templates/sectorDESC.html'
  };
});

mainPage.directive('sectorAscRev', function() {  
  return {
    templateUrl : 'directives.templates/sectorASCreverse.html'
  };
});
