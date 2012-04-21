package realtimetoday

class Academics {

    static constraints = {
        degreeType(inList: ["Bachelor","Masters","Other"])
    }
    String name
    String degreeType
    String major
    Date yearCompleted
}
