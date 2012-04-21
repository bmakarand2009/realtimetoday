package realtimetoday



import org.junit.*
import grails.test.mixin.*

@TestFor(EmployerController)
@Mock(Employer)
class EmployerControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/employer/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.employerInstanceList.size() == 0
        assert model.employerInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.employerInstance != null
    }

    void testSave() {
        controller.save()

        assert model.employerInstance != null
        assert view == '/employer/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/employer/show/1'
        assert controller.flash.message != null
        assert Employer.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/employer/list'


        populateValidParams(params)
        def employer = new Employer(params)

        assert employer.save() != null

        params.id = employer.id

        def model = controller.show()

        assert model.employerInstance == employer
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/employer/list'


        populateValidParams(params)
        def employer = new Employer(params)

        assert employer.save() != null

        params.id = employer.id

        def model = controller.edit()

        assert model.employerInstance == employer
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/employer/list'

        response.reset()


        populateValidParams(params)
        def employer = new Employer(params)

        assert employer.save() != null

        // test invalid parameters in update
        params.id = employer.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/employer/edit"
        assert model.employerInstance != null

        employer.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/employer/show/$employer.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        employer.clearErrors()

        populateValidParams(params)
        params.id = employer.id
        params.version = -1
        controller.update()

        assert view == "/employer/edit"
        assert model.employerInstance != null
        assert model.employerInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/employer/list'

        response.reset()

        populateValidParams(params)
        def employer = new Employer(params)

        assert employer.save() != null
        assert Employer.count() == 1

        params.id = employer.id

        controller.delete()

        assert Employer.count() == 0
        assert Employer.get(employer.id) == null
        assert response.redirectedUrl == '/employer/list'
    }
}
