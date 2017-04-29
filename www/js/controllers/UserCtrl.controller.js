starterApp.controller('UserCtrl', function($scope, accessService, $stateParams, $state, $ionicPopup) {

  $scope.user = new User();
  /*$scope.user.construct(
    "succesfullreal",
    0,
    "succesrealName",
    "succesrealLastname",
    "succesreal@mail.com",
    "123",
    81004,
  );*/
  $scope.password2="";


  $scope.validateNick = function(){
    //ajax de nick
  }

  $scope.validateMail = function(){
    //ajax de mail
  }

$scope.createUser = function (){
    //Server conenction to verify user's data
    console.log($scope.user);
    $scope.user.userscore=0;
    $scope.$parent.registered=1;
    $scope.$parent.theuser.setNickname($scope.user.nickname);
    $scope.$parent.theuser.setPassword($scope.user.password);
    $scope.user= angular.copy($scope.user);
    var promise = accessService.getData("php/controllers/MainController.php",
    true, "POST", {controllerType: 0, action: 10010, jsonData: JSON.stringify($scope.user)});

    promise.then(function (outputData) {
      console.log(outputData);
      if(outputData[0] === true) {
        console.log(outputData[1]);
        //console.log(outputData[1]);
        //id,idUser,dateReview, rate,description
        $scope.showPopup("Wellcome!", "You have been registered succesfully!");
        /*for (var i = 0; i < outputData[1].length; i++) {
          var question = new Question();
          question.setIdQuestion(outputData[1][i].idquestion);
          question.setNick(outputData[1][i].nick);
          question.setTopicName(outputData[1][i].topicname);
          question.setInput(outputData[1][i].input);
          question.setDateIn(outputData[1][i].date);
          $scope.questions.push(question);
        }*/
      }
      else {

        if(angular.isArray(outputData[1])) {
          alert(outputData[1]);
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
        $state.go('app.playlists');
        $scope.$parent.openModal(1);
      });
    };
    //$scope.loadInitData();
});
