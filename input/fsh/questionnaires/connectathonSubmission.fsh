RuleSet: Question(linkId, string, type, repeats)
* item[+].linkId = "{linkId}"
* item[=].string = "{string}"
* item[=].type = #{type}
* item[=].repeats = {repeats}


Instance: Questionnaire-ConnectathonSubmission
InstanceOf: sdc-questionnaire-extr-smap
Description: "Connectathon Submission"
Title: "Connectathon Submission"
Usage: #definition
* title = "Connectathon Submission"
* description = "Connectathon Submission"
* name = "Questionnaire-ConnectathonSubmission"
* version = "2024"
* status = #draft
* language = #en
* status = #draft

//Header
* insert Question(orgProdDetails,Organization and Product Details,group,false)
* item[=]
//Product overview
  * insert Question(basicInfo, Basic Information, group, false)
  * item[=]
    * insert Question(solutionName, What is the name of the Digital Health Solution?, string, false)
    * insert Question(contactName, Please provide the name of the individual who will be the key contact at your organization, string, false)
    * insert Question(jobTitle, Please provide their job title, string, false)
    * insert Question(contactNo, Please provide the phone number of the key contact at your organization, string, false)
    * insert Question(contactEmail, Please provide the email address of the individual who will be the key contact at your organization, string, false)
    * insert Question(orgName, Please name the entity submitting the solution,	string, false)
    * insert Question(operatingSystem, What operating systems does the Digital Health Solution work on, choice, false)
    * item[=].answerValueSet = Canonical(OperatingSystem)
    * insert Question(browser, What browsers does the Digital Health Solution work on (if applicable\)?, choice, false)
    * item[=].answerValueSet = Canonical(Browser)
    * insert Question(distributionModel, What is the distribution model for the Digital Health Solution?, choice, false)
    * item[=].answerValueSet = Canonical(DistributionModel)
    * insert Question(licensingModel, What is the licensing model for the Digital Health Solution?, choice, false)
    * item[=].answerValueSet = Canonical(LicensingModel)
    * insert Question(URL, Please provide a link to the Digital Health Solution's website,	URL, false)
    * insert Question(language,Which languages are currently supported by the Digital Health Solution?	, choice,false)
    * item[=].answerValueSet = Canonical(Language)
    * insert Question(description,Please provide a short description of the problem solved, and value proposition of the Digital Health Solution, string, false)
    * insert Question(purpose, Please provide details about the intended purpose of the Digital Health Solution and manner of use, string, false)