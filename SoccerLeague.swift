import UIKit

var players: [[String: String]] = [[:]]
var teamSharks: [[String: String]] = [[:]]
var teamDragons: [[String: String]] = [[:]]
var teamRaptors: [[String: String]] = [[:]]

func playerTypeList(_ players: [[String: String]]) -> ([[String: String]], [[String: String]]) {
    var experiencedPlayers: [[String: String]] = []
    var inExperiencedPlayers: [[String: String]] = []
    for player in players {
        if player["experienced"] == "true" {
           experiencedPlayers.append(player)
        } else {
           inExperiencedPlayers.append(player)
        }
    }
    return (experiencedPlayers, inExperiencedPlayers)
}

func teamsList(_ players: [[String: String]]) -> [[[String: String]]] {
     var experiencedPlayers = playerTypeList(players).0
     var inExperiencedPlayers = playerTypeList(players).1
     for i in  0..<experiencedPlayers.count {
        if i % 3 == 0 {
            teamSharks.append(experiencedPlayers[i])
            teamSharks.append(inExperiencedPlayers[i])
        } else if i % 3 == 1 {
            teamDragons.append(experiencedPlayers[i])
            teamDragons.append(inExperiencedPlayers[i])
        } else {
            teamRaptors.append(experiencedPlayers[i])
            teamRaptors.append(inExperiencedPlayers[i])
        }
    }
     return [teamSharks,teamDragons,teamRaptors]
}

var teams = teamsList(players)

func letters(_ teams: [String]) -> [[String: String]] {
    var results: [[String: String]] = []
    var letter: String = ""
    for team in teams {
        var practiceTime = ""
        var members: [[String: String]] = []
        if team == "Dragons"    {
            practiceTime = "March 17, 1pm"
            members = teamDragons
        } else if team == "Sharks"  {
            practiceTime = "March 17, 3pm"
            members = teamSharks
        } else if team == "Raptors" {
            practiceTime = "March 18, 1pm"
            members = teamRaptors
        }
}

players = [["name" : "Joe Smith", "height" : "42.0", "experienced" : "true", "guardians" : "Jim and Jan smith"],
           ["name": "Jill Tanner" , "height": "36.0", "experienced": "true" , "guardians": "Clara Tanner" ],
           ["name": "Bill Bon" , "height": "43.0", "experienced": "true" , "guardians": "Sara and Jenny Bon"],
           ["name": "Eva Gordon" , "height": "45.0", "experienced": "false", "guardians": "Wendy and Mike Gordon" ],
           ["name": "Matt Gill" , "height": "40.0", "experienced": "false" , "guardians": "Charles and Sylvia Gill"],
           ["name": "Kimmy Stein" , "height": "41.0", "experienced": "false" , "guardians": "Bill and Hillary Stein" ],
           ["name": "Sammy Adams", "height": "45.0", "experienced": "false" , "guardians": "Jeff Adams" ],
           ["name": "Karl Saygan" , "height": "42.0", "experienced": "true", "guardians": "Heather Bledsoe"],
           ["name": "Suzane Greenberg", "height": "44.0", "experienced": "true", "guardians": "Henrietta Dumas" ],
           ["name": "Sal Dall", "height": "41.0", "experienced": "false", "guardians": "Gala Dall"],
           ["name": "Joe Kavaller" , "height": "39.0", "experienced": "false", "guardians": "Sam and Elaine Kavaller" ],
           ["name": "Ben Finkelstein" , "height": "44.0", "experienced": "false" , "guardians": "Aaron and Jill Finkelstein" ],
           ["name": "Diego Soto" , "height": "41.0", "experienced": "true", "guardians": "Robin and Sarika Soto"],
           ["name": "Chole Alaska", "height": "47.0", "experienced": "false" , "guardians": "David and Jamie Alaska" ],
           ["name": "Arnold Willis" , "height": "43.0", "experienced": "false" , "guardians": "Clair Willis"],
           ["name": "Phillip Helm", "height": "44.0", "experienced": "true" , "guardians": "Thomas Helm and Eva Jones"],
           ["name": "Les Clay" , "height": "42.0", "experienced": "true", "guardians": "Wyonna Brown" ],
           ["name": "Herschel Krustofski", "height": "45.0", "experienced": "true", "guardians": "Hyman and Rachel Krustofski" ]]
