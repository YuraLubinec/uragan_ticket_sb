'use strict'
angular.module('mainPage').component('mainPage', {
  templateUrl : 'templates/main-page.template.html',
  controller : [ 'MainPageService', function MainPageController(MainPageService) {
    var main = this;
    main.gameId = null;
    main.seatList = [];
    main.gameList = [];
    main.currentGame = null;
    main.seat_obj = null;
    main.ticket = {
      id : null,
      seat_id : null,
      game_id : null
    };
    main.submit = submit;
    main.checkIfSubscribed = checkIfSubscribed;
    main.pointAllOccupiedSeats = pointAllOccupiedSeats;
    main.classChecker = classChecker;
    main.deleteT = deleteT;
    main.currentSeasonSubscriptions = [];

    fetchAllGames();
    fetchAllSectors();
    
    function printElement(elem) {
        var domClone = elem.cloneNode(true);
        
        var $printSection = document.getElementById("printSection");
        
        if (!$printSection) {
            var $printSection = document.createElement("div");
            $printSection.id = "printSection";
            document.body.appendChild($printSection);
        }
        
        $printSection.innerHTML = "";
        
        $printSection.appendChild(domClone);
    }
    

    function fetchAllSectors() {
      MainPageService.fetchAllSectors().then(function(response) {
        main.seatList = response;
      }, function(errResponse) {
        console.error('Error while fetching Sectors');
      });
    }

    function fetchAllGames() {
      MainPageService.fetchAllGames().then(function(response) {
        main.gameList = response;
        pointAllOccupiedSeats();
      }, function(errResponse) {
        console.error('Error while fetching Games');
      });
    }

    function pointAllOccupiedSeats() {
      if (main.ticket.game_id != null) {
        refreshCurrentGameById();
      }
      if (main.currentGame != null) {
        angular.element('button').removeClass('buttonStyle');
        angular.element('button').removeClass('buttonStyleSubscription');
        angular.element('button').removeAttr('disabled');
        pointAllSubscribedSeats();
        for (var i = 0; i < main.currentGame.tickets.length; i++) {
          var occupiedSeat = angular.element('#' + main.currentGame.tickets[i].seat_id);
          occupiedSeat.addClass('buttonStyle');
        }
      }
    }

    function pointAllSubscribedSeats() {
      MainPageService.fetchSeason(main.currentGame.season_id).then(function(response) {
        main.currentSeasonSubscriptions = response.subscription;
        for (var i = 0; i < response.subscription.length; i++) {
          var occupiedSeat = angular.element('#' + response.subscription[i].seat_id);
          occupiedSeat.addClass('buttonStyleSubscription');
        }
      }, function(errResponse) {
        console.error('Error while fetching Season');
      });
    }

    function createTicket(ticket) {
      //document.getElementById('printTicket').style.display = 'block';
	  //printElement(document.getElementById("printTicket"));
      printElement(document.getElementById('printTicket'));
      window.print();
       
       MainPageService.createTicket(ticket).then(function() { 
        fetchAllGames();
      }, function(errResponse) {
        console.error('Error while saving ticket');
      });
    }

    function deleteTicket(id) {
      MainPageService.deleteTicket(id).then(fetchAllGames, function(errResponse) {
        console.error('Error while saving ticket');
      });
    }

    function refreshCurrentGameById() {
      for (var i = 0; i < main.gameList.length; i++) {
        if (main.gameList[i].id === main.ticket.game_id) {
          main.currentGame = main.gameList[i];
        }
      }
      main.ticket = {
        id : null,
        seat_id : null,
        game_id : null
      };
    }

    function classChecker() {
      if (main.seat_obj != null) {
        return angular.element('#' + main.seat_obj.id).hasClass('buttonStyle');
      }
    }

    function checkIfSubscribed (){
      if (main.seat_obj != null) {
        return angular.element('#' + main.seat_obj.id).hasClass('buttonStyleSubscription');
      }
    }

    function submit() {
      main.ticket.seat_id = main.seat_obj.id;
      main.ticket.game_id = main.currentGame.id;
      createTicket(main.ticket);
      angular.element('#myModal').modal('hide');
    }

    function deleteT() {
      main.ticket.game_id = main.currentGame.id;
      for (var i = 0; i < main.currentGame.tickets.length; i++) {
        if (main.currentGame.tickets[i].seat_id === main.seat_obj.id) {
          deleteTicket(main.currentGame.tickets[i].id);
        }
      }
      angular.element('#myModal').modal('hide');
    }

  } ]
});