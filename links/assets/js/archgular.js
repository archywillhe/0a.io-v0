'use strict';

function getDOM(){
  var DOMs = {};
  var events = {
    latestPost: function(){
      getDOM("NGVIEW").style.minHeight = window.innerHeight + "px"
    }
  };
  var getDOM = function(DOMClassName){
  if(!DOMs.hasOwnProperty(DOMClassName)){
      DOMs[DOMClassName] = document.getElementsByClassName(DOMClassName)[0];
      if(events.hasOwnProperty(DOMClassName)){
        //call events
        events[DOMClassName]();
      }
  }
  return DOMs[DOMClassName];
  }
  return getDOM;
}

function getPosts(){
  var getPosts = function(jsonName,$scope,$http,callback){
    $http.get('api/'+jsonName+'.json').success(function(data) {
      $scope.posts = data.posts;
      callback();
    }).error(function(data, status, headers, config) {
      console.log("err",status);
    });
  }
  return getPosts;
}

function chooseViewChoice(){
  var chosen = undefined;
  var defaultClassName = "archyitem";
  var makeChosen = function(DOMClassName){
    chosen = { //default
        DOM: getDOM( DOMClassName ),
        className: DOMClassName
      }
  };
  var chooseViewChoice = function(DOMClassName){
    if(chosen === undefined)
      makeChosen("showLatestLog"); //default
    chosen.DOM.className = defaultClassName + " " + chosen.className;
    makeChosen(DOMClassName);
    chosen.DOM.className = defaultClassName + " chosen " + chosen.className;
  }
  return chooseViewChoice;
}

var getDOM = getDOM();
var getPosts = getPosts();
var chooseViewChoice = chooseViewChoice();
var globalScope;

function MainCtrl($scope){
  globalScope = $scope;
  //default text
  globalScope.showingTitle = "Logs of Arch's: Lastest Log";
}

function IndexCtrl($scope, $http) {
  globalScope.showingTitle = "Logs of Arch's: Lastest Log";
  getDOM("latestPost").style.display = "block";
  getDOM("NGVIEW").style.display = "none";
  chooseViewChoice("showLatestLog");
}

function allDailyLogsCtrl ($scope, $http){
  globalScope.showingTitle = "Logs of Arch's: Logs after The Game That Matters";
  getDOM("latestPost").style.display = "none";
  getDOM("NGVIEW").style.display = "block";
  chooseViewChoice("showAllLogs");

  var logNumbers = [2,3,2,1];
  getPosts("all-dailylogs",$scope, $http,function(){
    $scope.logNumber = function(a){
      return logNumbers[a%4]
    };
  });
}

function logsFromThePastCtrl ($scope, $http){
  globalScope.showingTitle = "Arch's Logs From the Past";
  getDOM("latestPost").style.display = "none";
  getDOM("NGVIEW").style.display = "block";
  chooseViewChoice("showLogsBefore");

  var postsCol = [[],[],[]];
  getPosts("logs-from-the-past",$scope, $http,function(){
    var index = 0;
    $scope.posts.forEach(function(a){
      postsCol[index].push(a);
      index++; if(index>2) index = 0;
    });
    $scope.postsCol = postsCol;
  });
  $scope.wideScreen = function(){
    return (window.innerWidth > 767)
  }

}

var hl = angular.module('homeLog',['ngRoute','ngSanitize']).filter('to_trust', ['$sce', function($sce){
        return function(text) {
            return $sce.trustAsHtml(text);
        };
    }]);
hl.config(['$routeProvider', '$locationProvider', function($routeProvider,$locationProvider) {
    $routeProvider.
      when('/latestLog', {
         controller: IndexCtrl,
         templateUrl: ""
      }).
      when('/all-dailylogs', {
        controller: allDailyLogsCtrl,
        templateUrl: 'partials/all-dailylogs',
      }).
      when('/logs-from-the-past', {
        controller: logsFromThePastCtrl,
        templateUrl: 'partials/logs-from-the-past',
      });
     $locationProvider.html5Mode({
      enabled: true,
      requireBase: false
    });
  }]);
