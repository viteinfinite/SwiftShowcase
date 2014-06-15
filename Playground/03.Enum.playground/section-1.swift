// Playground - noun: a place where people can play

import UIKit

extension Train {
    enum Status {
        case OnTime
        case Delayed(Int, String)
        case Canceled
    }
    
    enum Agent {
        case RATP
        case SNCF
    }
}


struct Train {
    var agent: Agent
    var status: Status
    let identifier: String
    
    init(identifier: String, agent: Agent) {
        self.identifier = identifier
        self.agent = agent
        self.status = .OnTime
    }
}

func train_info(train: Train) -> String {
    var switch_msg:NSString?
    
    switch (train.status, train.agent) {
    case (.Delayed(let delay, _), _) where delay < 45:
        switch_msg = "Retard de \(delay)min"
    case (.Delayed(let delay, let msg), _):
        switch_msg = "Retard d'au moins \(delay)min. \(msg)"
    case (.Canceled, .SNCF):
        switch_msg = "Annulé. Merci les grèves SNCF !"
    case (.Canceled, .RATP):
        switch_msg = "Annulé. Merci les pannes RATP !"
    default:
        switch_msg = "FAIL"
    }
    
    return "\(train.identifier): \(switch_msg)"
}

var rerA = Train(identifier: "RER A", agent: .RATP)
var rerB = Train(identifier: "RER B", agent: .SNCF)

rerA.status = .Canceled
rerB.status = .Canceled

train_info(rerA) == "RER A: Annulé. Merci les pannes RATP !"
train_info(rerB) == "RER B: Annulé. Merci les grèves SNCF !"

rerA.status = .Delayed(50, "Problème de signalisation")
rerB.status = .Delayed(10, "Voyageur malade")

train_info(rerA) == "RER A: Retard d'au moins 50min. Problème de signalisation"
train_info(rerB) == "RER B: Retard de 10min"
