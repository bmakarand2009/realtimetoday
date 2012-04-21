package realtimetoday

class Certificate {

    static constraints = {
    }
    static belongsTo = [candidate:Candidate]
    String certifcateName
    String certificateType
    Date completionDate
    
}
