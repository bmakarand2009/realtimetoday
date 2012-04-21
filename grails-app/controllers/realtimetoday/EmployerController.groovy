package realtimetoday

import org.springframework.dao.DataIntegrityViolationException

class EmployerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [employerInstanceList: Employer.list(params), employerInstanceTotal: Employer.count()]
    }

    def create() {
        [employerInstance: new Employer(params)]
    }

    def save() {
        def employerInstance = new Employer(params)
        if (!employerInstance.save(flush: true)) {
            render(view: "create", model: [employerInstance: employerInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'employer.label', default: 'Employer'), employerInstance.id])
        redirect(action: "show", id: employerInstance.id)
    }

    def show() {
        def employerInstance = Employer.get(params.id)
        if (!employerInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'employer.label', default: 'Employer'), params.id])
            redirect(action: "list")
            return
        }

        [employerInstance: employerInstance]
    }

    def edit() {
        def employerInstance = Employer.get(params.id)
        if (!employerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employer.label', default: 'Employer'), params.id])
            redirect(action: "list")
            return
        }

        [employerInstance: employerInstance]
    }

    def update() {
        def employerInstance = Employer.get(params.id)
        if (!employerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employer.label', default: 'Employer'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (employerInstance.version > version) {
                employerInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'employer.label', default: 'Employer')] as Object[],
                          "Another user has updated this Employer while you were editing")
                render(view: "edit", model: [employerInstance: employerInstance])
                return
            }
        }

        employerInstance.properties = params

        if (!employerInstance.save(flush: true)) {
            render(view: "edit", model: [employerInstance: employerInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'employer.label', default: 'Employer'), employerInstance.id])
        redirect(action: "show", id: employerInstance.id)
    }

    def delete() {
        def employerInstance = Employer.get(params.id)
        if (!employerInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'employer.label', default: 'Employer'), params.id])
            redirect(action: "list")
            return
        }

        try {
            employerInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'employer.label', default: 'Employer'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'employer.label', default: 'Employer'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
