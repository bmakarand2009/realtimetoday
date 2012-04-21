package realtimetoday

class Employer {

    static constraints = {
        email email: true, blank: false
        companyName(blank: false,unique: true)

    }

    static hasMany = [employees: Employees]

    String companyName
    String companyUser
    String email
    
    String address1
    String address2
    String city
    String state
    String zipCode
    String phoneNo
    String phoneType
    String companyUrl
    Integer ein

    
    
}
