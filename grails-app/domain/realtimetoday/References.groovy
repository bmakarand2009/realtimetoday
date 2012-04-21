package realtimetoday

class References {

    static belongsTo = [candidate:Candidate]
    String referenceName
    String email
    String phoneNo

    static constraints = {
    }
}
