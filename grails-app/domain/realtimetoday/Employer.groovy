package realtimetoday

class Employer {

    static constraints = {
        email email: true, blank: false
        companyName(blank: false,unique: true)

    }
    static embedded = ['address']


    String companyName
    String companyUser
    String email
    

    String phoneNo
    String phoneType
    String companyUrl
    Integer ein

    //Address
    String address1
    String address2
    String city
    String state
    String zipCode

    
    
}
