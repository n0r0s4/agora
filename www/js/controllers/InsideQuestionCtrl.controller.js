starterApp.controller('InsideQuestionCtrl', function($ionicPopup, $scope, accessService, $stateParams, $state) {
  $scope.inQuestion;
  $scope.answers=[];
  function inQuestion(){
    $scope.inQuestion=$scope.$parent.insiderDaddy;
  }
   function loadAnswers(){
    //Server conenction to verify user's data
    $scope.gimmeAnswers=angular.copy($scope.inQuestion);
    var promise = accessService.getData("php/controllers/MainController.php",
    true, "POST", {controllerType: 1, action: 10050, jsonData: JSON.stringify($scope.gimmeAnswers)});

    promise.then(function (outputData) {
      //alert("con done");
      console.log(outputData);
      if(outputData[0] === true) {
        console.log(outputData[1]);
        //console.log(outputData[1]);
        //id,idUser,dateReview, rate,description
        for (var i = 0; i < outputData[1].length; i++) {
          var answer = new Answer();
          answer.setIdquestion(outputData[1][i].idquestion);
          answer.setNickname(outputData[1][i].nickname);
          answer.setTopicname(outputData[1][i].topicname);
          answer.setInput(outputData[1][i].input);
          answer.setDateIn(outputData[1][i].date);
          $scope.answers.push(answer);
        }
      }
      else {
        console.log(outputData);
        if(angular.isArray(outputData[1])) {
          $scope.showPopup("Amazingly it's happening!","This question doesn't have answers yet!");
        }
        else {
          alert("There has been an error in the server, try later");
        }
      }
    });
  }
  $scope.showPopup = function(header,msg) {
    var alertPopup = $ionicPopup.alert({
      title: header ,
      template: msg
    });
    alertPopup.then(function(res) {
      //$state.go('app.playlists');
      //$scope.$parent.openModal(1);
    });
  };
  inQuestion();
  loadAnswers();
});
