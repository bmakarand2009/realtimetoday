package realtimetoday

class Candidate {
    

    static constraints = {
        email email: true, blank: false ,unique: true

    }
    static embedded = ['address']
    static hasMany = [skills: Skills,academics: Academics, certfication:Certificate,references:References]

    String firstName
    String lastName
    String email
    String phoneNumber
    Integer rate
    String resumeUrl;
    Date availability


    //Address
    String address1
    String address2
    String city
    String state
    String zipCode

}
