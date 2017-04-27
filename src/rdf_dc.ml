
let dc_str = "http://purl.org/dc/terms/";;
let dc = Iri.of_string dc_str ;;
let dc_ s = Iri.of_string (dc_str ^ s);;

let c_Agent = dc_ "Agent" ;;
let c_AgentClass = dc_ "AgentClass" ;;
let c_BibliographicResource = dc_ "BibliographicResource" ;;
let dt_Box = dc_ "Box" ;;
let c_FileFormat = dc_ "FileFormat" ;;
let c_Frequency = dc_ "Frequency" ;;
let dt_ISO3166 = dc_ "ISO3166" ;;
let dt_ISO639_2 = dc_ "ISO639-2" ;;
let dt_ISO639_3 = dc_ "ISO639-3" ;;
let c_Jurisdiction = dc_ "Jurisdiction" ;;
let c_LicenseDocument = dc_ "LicenseDocument" ;;
let c_LinguisticSystem = dc_ "LinguisticSystem" ;;
let c_Location = dc_ "Location" ;;
let c_LocationPeriodOrJurisdiction = dc_ "LocationPeriodOrJurisdiction" ;;
let c_MediaType = dc_ "MediaType" ;;
let c_MediaTypeOrExtent = dc_ "MediaTypeOrExtent" ;;
let c_MethodOfAccrual = dc_ "MethodOfAccrual" ;;
let c_MethodOfInstruction = dc_ "MethodOfInstruction" ;;
let dt_Period = dc_ "Period" ;;
let c_PeriodOfTime = dc_ "PeriodOfTime" ;;
let c_PhysicalMedium = dc_ "PhysicalMedium" ;;
let c_PhysicalResource = dc_ "PhysicalResource" ;;
let dt_Point = dc_ "Point" ;;
let c_Policy = dc_ "Policy" ;;
let c_ProvenanceStatement = dc_ "ProvenanceStatement" ;;
let dt_RFC1766 = dc_ "RFC1766" ;;
let dt_RFC3066 = dc_ "RFC3066" ;;
let dt_RFC4646 = dc_ "RFC4646" ;;
let dt_RFC5646 = dc_ "RFC5646" ;;
let c_RightsStatement = dc_ "RightsStatement" ;;
let c_SizeOrDuration = dc_ "SizeOrDuration" ;;
let c_Standard = dc_ "Standard" ;;
let dt_URI = dc_ "URI" ;;
let dt_W3CDTF = dc_ "W3CDTF" ;;
let abstract = dc_ "abstract" ;;
let accessRights = dc_ "accessRights" ;;
let accrualMethod = dc_ "accrualMethod" ;;
let accrualPeriodicity = dc_ "accrualPeriodicity" ;;
let accrualPolicy = dc_ "accrualPolicy" ;;
let alternative = dc_ "alternative" ;;
let audience = dc_ "audience" ;;
let available = dc_ "available" ;;
let bibliographicCitation = dc_ "bibliographicCitation" ;;
let conformsTo = dc_ "conformsTo" ;;
let contributor = dc_ "contributor" ;;
let coverage = dc_ "coverage" ;;
let created = dc_ "created" ;;
let creator = dc_ "creator" ;;
let date = dc_ "date" ;;
let dateAccepted = dc_ "dateAccepted" ;;
let dateCopyrighted = dc_ "dateCopyrighted" ;;
let dateSubmitted = dc_ "dateSubmitted" ;;
let description = dc_ "description" ;;
let educationLevel = dc_ "educationLevel" ;;
let extent = dc_ "extent" ;;
let format = dc_ "format" ;;
let hasFormat = dc_ "hasFormat" ;;
let hasPart = dc_ "hasPart" ;;
let hasVersion = dc_ "hasVersion" ;;
let identifier = dc_ "identifier" ;;
let instructionalMethod = dc_ "instructionalMethod" ;;
let isFormatOf = dc_ "isFormatOf" ;;
let isPartOf = dc_ "isPartOf" ;;
let isReferencedBy = dc_ "isReferencedBy" ;;
let isReplacedBy = dc_ "isReplacedBy" ;;
let isRequiredBy = dc_ "isRequiredBy" ;;
let isVersionOf = dc_ "isVersionOf" ;;
let issued = dc_ "issued" ;;
let language = dc_ "language" ;;
let license = dc_ "license" ;;
let mediator = dc_ "mediator" ;;
let medium = dc_ "medium" ;;
let modified = dc_ "modified" ;;
let provenance = dc_ "provenance" ;;
let publisher = dc_ "publisher" ;;
let references = dc_ "references" ;;
let relation = dc_ "relation" ;;
let replaces = dc_ "replaces" ;;
let requires = dc_ "requires" ;;
let rights = dc_ "rights" ;;
let rightsHolder = dc_ "rightsHolder" ;;
let source = dc_ "source" ;;
let spatial = dc_ "spatial" ;;
let subject = dc_ "subject" ;;
let tableOfContents = dc_ "tableOfContents" ;;
let temporal = dc_ "temporal" ;;
let title = dc_ "title" ;;
let type_ = dc_ "type" ;;
let valid = dc_ "valid" ;;

module Open = struct
  let dc_c_Agent = c_Agent
  let dc_c_AgentClass = c_AgentClass
  let dc_c_BibliographicResource = c_BibliographicResource
  let dc_dt_Box = dt_Box
  let dc_c_FileFormat = c_FileFormat
  let dc_c_Frequency = c_Frequency
  let dc_dt_ISO3166 = dt_ISO3166
  let dc_dt_ISO639_2 = dt_ISO639_2
  let dc_dt_ISO639_3 = dt_ISO639_3
  let dc_c_Jurisdiction = c_Jurisdiction
  let dc_c_LicenseDocument = c_LicenseDocument
  let dc_c_LinguisticSystem = c_LinguisticSystem
  let dc_c_Location = c_Location
  let dc_c_LocationPeriodOrJurisdiction = c_LocationPeriodOrJurisdiction
  let dc_c_MediaType = c_MediaType
  let dc_c_MediaTypeOrExtent = c_MediaTypeOrExtent
  let dc_c_MethodOfAccrual = c_MethodOfAccrual
  let dc_c_MethodOfInstruction = c_MethodOfInstruction
  let dc_dt_Period = dt_Period
  let dc_c_PeriodOfTime = c_PeriodOfTime
  let dc_c_PhysicalMedium = c_PhysicalMedium
  let dc_c_PhysicalResource = c_PhysicalResource
  let dc_dt_Point = dt_Point
  let dc_c_Policy = c_Policy
  let dc_c_ProvenanceStatement = c_ProvenanceStatement
  let dc_dt_RFC1766 = dt_RFC1766
  let dc_dt_RFC3066 = dt_RFC3066
  let dc_dt_RFC4646 = dt_RFC4646
  let dc_dt_RFC5646 = dt_RFC5646
  let dc_c_RightsStatement = c_RightsStatement
  let dc_c_SizeOrDuration = c_SizeOrDuration
  let dc_c_Standard = c_Standard
  let dc_dt_URI = dt_URI
  let dc_dt_W3CDTF = dt_W3CDTF
  let dc_abstract = abstract
  let dc_accessRights = accessRights
  let dc_accrualMethod = accrualMethod
  let dc_accrualPeriodicity = accrualPeriodicity
  let dc_accrualPolicy = accrualPolicy
  let dc_alternative = alternative
  let dc_audience = audience
  let dc_available = available
  let dc_bibliographicCitation = bibliographicCitation
  let dc_conformsTo = conformsTo
  let dc_contributor = contributor
  let dc_coverage = coverage
  let dc_created = created
  let dc_creator = creator
  let dc_date = date
  let dc_dateAccepted = dateAccepted
  let dc_dateCopyrighted = dateCopyrighted
  let dc_dateSubmitted = dateSubmitted
  let dc_description = description
  let dc_educationLevel = educationLevel
  let dc_extent = extent
  let dc_format = format
  let dc_hasFormat = hasFormat
  let dc_hasPart = hasPart
  let dc_hasVersion = hasVersion
  let dc_identifier = identifier
  let dc_instructionalMethod = instructionalMethod
  let dc_isFormatOf = isFormatOf
  let dc_isPartOf = isPartOf
  let dc_isReferencedBy = isReferencedBy
  let dc_isReplacedBy = isReplacedBy
  let dc_isRequiredBy = isRequiredBy
  let dc_isVersionOf = isVersionOf
  let dc_issued = issued
  let dc_language = language
  let dc_license = license
  let dc_mediator = mediator
  let dc_medium = medium
  let dc_modified = modified
  let dc_provenance = provenance
  let dc_publisher = publisher
  let dc_references = references
  let dc_relation = relation
  let dc_replaces = replaces
  let dc_requires = requires
  let dc_rights = rights
  let dc_rightsHolder = rightsHolder
  let dc_source = source
  let dc_spatial = spatial
  let dc_subject = subject
  let dc_tableOfContents = tableOfContents
  let dc_temporal = temporal
  let dc_title = title
  let dc_type = type_
  let dc_valid = valid
end

class from ?sub g =
  let sub = match sub with None -> g.Rdf_graph.name() | Some iri -> iri in
  let sub = Rdf_term.Iri sub in
  object(self)
  method abstract = g.Rdf_graph.objects_of ~sub ~pred: abstract
  method abstract_opt = match self#abstract with [] -> None | x::_ -> Some x
  method abstract_iris = Rdf_graph.only_iris (self#abstract)
  method abstract_opt_iri = match self#abstract_iris with [] -> None | x::_ -> Some x
  method accessRights = g.Rdf_graph.objects_of ~sub ~pred: accessRights
  method accessRights_opt = match self#accessRights with [] -> None | x::_ -> Some x
  method accessRights_iris = Rdf_graph.only_iris (self#accessRights)
  method accessRights_opt_iri = match self#accessRights_iris with [] -> None | x::_ -> Some x
  method accrualMethod = g.Rdf_graph.objects_of ~sub ~pred: accrualMethod
  method accrualMethod_opt = match self#accrualMethod with [] -> None | x::_ -> Some x
  method accrualMethod_iris = Rdf_graph.only_iris (self#accrualMethod)
  method accrualMethod_opt_iri = match self#accrualMethod_iris with [] -> None | x::_ -> Some x
  method accrualPeriodicity = g.Rdf_graph.objects_of ~sub ~pred: accrualPeriodicity
  method accrualPeriodicity_opt = match self#accrualPeriodicity with [] -> None | x::_ -> Some x
  method accrualPeriodicity_iris = Rdf_graph.only_iris (self#accrualPeriodicity)
  method accrualPeriodicity_opt_iri = match self#accrualPeriodicity_iris with [] -> None | x::_ -> Some x
  method accrualPolicy = g.Rdf_graph.objects_of ~sub ~pred: accrualPolicy
  method accrualPolicy_opt = match self#accrualPolicy with [] -> None | x::_ -> Some x
  method accrualPolicy_iris = Rdf_graph.only_iris (self#accrualPolicy)
  method accrualPolicy_opt_iri = match self#accrualPolicy_iris with [] -> None | x::_ -> Some x
  method alternative = Rdf_graph.literal_objects_of g ~sub ~pred: alternative
  method alternative_opt = match self#alternative with [] -> None | x::_ -> Some x
  method audience = g.Rdf_graph.objects_of ~sub ~pred: audience
  method audience_opt = match self#audience with [] -> None | x::_ -> Some x
  method audience_iris = Rdf_graph.only_iris (self#audience)
  method audience_opt_iri = match self#audience_iris with [] -> None | x::_ -> Some x
  method available = Rdf_graph.literal_objects_of g ~sub ~pred: available
  method available_opt = match self#available with [] -> None | x::_ -> Some x
  method bibliographicCitation = Rdf_graph.literal_objects_of g ~sub ~pred: bibliographicCitation
  method bibliographicCitation_opt = match self#bibliographicCitation with [] -> None | x::_ -> Some x
  method conformsTo = g.Rdf_graph.objects_of ~sub ~pred: conformsTo
  method conformsTo_opt = match self#conformsTo with [] -> None | x::_ -> Some x
  method conformsTo_iris = Rdf_graph.only_iris (self#conformsTo)
  method conformsTo_opt_iri = match self#conformsTo_iris with [] -> None | x::_ -> Some x
  method contributor = g.Rdf_graph.objects_of ~sub ~pred: contributor
  method contributor_opt = match self#contributor with [] -> None | x::_ -> Some x
  method contributor_iris = Rdf_graph.only_iris (self#contributor)
  method contributor_opt_iri = match self#contributor_iris with [] -> None | x::_ -> Some x
  method coverage = g.Rdf_graph.objects_of ~sub ~pred: coverage
  method coverage_opt = match self#coverage with [] -> None | x::_ -> Some x
  method coverage_iris = Rdf_graph.only_iris (self#coverage)
  method coverage_opt_iri = match self#coverage_iris with [] -> None | x::_ -> Some x
  method created = Rdf_graph.literal_objects_of g ~sub ~pred: created
  method created_opt = match self#created with [] -> None | x::_ -> Some x
  method creator = g.Rdf_graph.objects_of ~sub ~pred: creator
  method creator_opt = match self#creator with [] -> None | x::_ -> Some x
  method creator_iris = Rdf_graph.only_iris (self#creator)
  method creator_opt_iri = match self#creator_iris with [] -> None | x::_ -> Some x
  method date = Rdf_graph.literal_objects_of g ~sub ~pred: date
  method date_opt = match self#date with [] -> None | x::_ -> Some x
  method dateAccepted = Rdf_graph.literal_objects_of g ~sub ~pred: dateAccepted
  method dateAccepted_opt = match self#dateAccepted with [] -> None | x::_ -> Some x
  method dateCopyrighted = Rdf_graph.literal_objects_of g ~sub ~pred: dateCopyrighted
  method dateCopyrighted_opt = match self#dateCopyrighted with [] -> None | x::_ -> Some x
  method dateSubmitted = Rdf_graph.literal_objects_of g ~sub ~pred: dateSubmitted
  method dateSubmitted_opt = match self#dateSubmitted with [] -> None | x::_ -> Some x
  method description = g.Rdf_graph.objects_of ~sub ~pred: description
  method description_opt = match self#description with [] -> None | x::_ -> Some x
  method description_iris = Rdf_graph.only_iris (self#description)
  method description_opt_iri = match self#description_iris with [] -> None | x::_ -> Some x
  method educationLevel = g.Rdf_graph.objects_of ~sub ~pred: educationLevel
  method educationLevel_opt = match self#educationLevel with [] -> None | x::_ -> Some x
  method educationLevel_iris = Rdf_graph.only_iris (self#educationLevel)
  method educationLevel_opt_iri = match self#educationLevel_iris with [] -> None | x::_ -> Some x
  method extent = g.Rdf_graph.objects_of ~sub ~pred: extent
  method extent_opt = match self#extent with [] -> None | x::_ -> Some x
  method extent_iris = Rdf_graph.only_iris (self#extent)
  method extent_opt_iri = match self#extent_iris with [] -> None | x::_ -> Some x
  method format = g.Rdf_graph.objects_of ~sub ~pred: format
  method format_opt = match self#format with [] -> None | x::_ -> Some x
  method format_iris = Rdf_graph.only_iris (self#format)
  method format_opt_iri = match self#format_iris with [] -> None | x::_ -> Some x
  method hasFormat = g.Rdf_graph.objects_of ~sub ~pred: hasFormat
  method hasFormat_opt = match self#hasFormat with [] -> None | x::_ -> Some x
  method hasFormat_iris = Rdf_graph.only_iris (self#hasFormat)
  method hasFormat_opt_iri = match self#hasFormat_iris with [] -> None | x::_ -> Some x
  method hasPart = g.Rdf_graph.objects_of ~sub ~pred: hasPart
  method hasPart_opt = match self#hasPart with [] -> None | x::_ -> Some x
  method hasPart_iris = Rdf_graph.only_iris (self#hasPart)
  method hasPart_opt_iri = match self#hasPart_iris with [] -> None | x::_ -> Some x
  method hasVersion = g.Rdf_graph.objects_of ~sub ~pred: hasVersion
  method hasVersion_opt = match self#hasVersion with [] -> None | x::_ -> Some x
  method hasVersion_iris = Rdf_graph.only_iris (self#hasVersion)
  method hasVersion_opt_iri = match self#hasVersion_iris with [] -> None | x::_ -> Some x
  method identifier = Rdf_graph.literal_objects_of g ~sub ~pred: identifier
  method identifier_opt = match self#identifier with [] -> None | x::_ -> Some x
  method instructionalMethod = g.Rdf_graph.objects_of ~sub ~pred: instructionalMethod
  method instructionalMethod_opt = match self#instructionalMethod with [] -> None | x::_ -> Some x
  method instructionalMethod_iris = Rdf_graph.only_iris (self#instructionalMethod)
  method instructionalMethod_opt_iri = match self#instructionalMethod_iris with [] -> None | x::_ -> Some x
  method isFormatOf = g.Rdf_graph.objects_of ~sub ~pred: isFormatOf
  method isFormatOf_opt = match self#isFormatOf with [] -> None | x::_ -> Some x
  method isFormatOf_iris = Rdf_graph.only_iris (self#isFormatOf)
  method isFormatOf_opt_iri = match self#isFormatOf_iris with [] -> None | x::_ -> Some x
  method isPartOf = g.Rdf_graph.objects_of ~sub ~pred: isPartOf
  method isPartOf_opt = match self#isPartOf with [] -> None | x::_ -> Some x
  method isPartOf_iris = Rdf_graph.only_iris (self#isPartOf)
  method isPartOf_opt_iri = match self#isPartOf_iris with [] -> None | x::_ -> Some x
  method isReferencedBy = g.Rdf_graph.objects_of ~sub ~pred: isReferencedBy
  method isReferencedBy_opt = match self#isReferencedBy with [] -> None | x::_ -> Some x
  method isReferencedBy_iris = Rdf_graph.only_iris (self#isReferencedBy)
  method isReferencedBy_opt_iri = match self#isReferencedBy_iris with [] -> None | x::_ -> Some x
  method isReplacedBy = g.Rdf_graph.objects_of ~sub ~pred: isReplacedBy
  method isReplacedBy_opt = match self#isReplacedBy with [] -> None | x::_ -> Some x
  method isReplacedBy_iris = Rdf_graph.only_iris (self#isReplacedBy)
  method isReplacedBy_opt_iri = match self#isReplacedBy_iris with [] -> None | x::_ -> Some x
  method isRequiredBy = g.Rdf_graph.objects_of ~sub ~pred: isRequiredBy
  method isRequiredBy_opt = match self#isRequiredBy with [] -> None | x::_ -> Some x
  method isRequiredBy_iris = Rdf_graph.only_iris (self#isRequiredBy)
  method isRequiredBy_opt_iri = match self#isRequiredBy_iris with [] -> None | x::_ -> Some x
  method isVersionOf = g.Rdf_graph.objects_of ~sub ~pred: isVersionOf
  method isVersionOf_opt = match self#isVersionOf with [] -> None | x::_ -> Some x
  method isVersionOf_iris = Rdf_graph.only_iris (self#isVersionOf)
  method isVersionOf_opt_iri = match self#isVersionOf_iris with [] -> None | x::_ -> Some x
  method issued = Rdf_graph.literal_objects_of g ~sub ~pred: issued
  method issued_opt = match self#issued with [] -> None | x::_ -> Some x
  method language = g.Rdf_graph.objects_of ~sub ~pred: language
  method language_opt = match self#language with [] -> None | x::_ -> Some x
  method language_iris = Rdf_graph.only_iris (self#language)
  method language_opt_iri = match self#language_iris with [] -> None | x::_ -> Some x
  method license = g.Rdf_graph.objects_of ~sub ~pred: license
  method license_opt = match self#license with [] -> None | x::_ -> Some x
  method license_iris = Rdf_graph.only_iris (self#license)
  method license_opt_iri = match self#license_iris with [] -> None | x::_ -> Some x
  method mediator = g.Rdf_graph.objects_of ~sub ~pred: mediator
  method mediator_opt = match self#mediator with [] -> None | x::_ -> Some x
  method mediator_iris = Rdf_graph.only_iris (self#mediator)
  method mediator_opt_iri = match self#mediator_iris with [] -> None | x::_ -> Some x
  method medium = g.Rdf_graph.objects_of ~sub ~pred: medium
  method medium_opt = match self#medium with [] -> None | x::_ -> Some x
  method medium_iris = Rdf_graph.only_iris (self#medium)
  method medium_opt_iri = match self#medium_iris with [] -> None | x::_ -> Some x
  method modified = Rdf_graph.literal_objects_of g ~sub ~pred: modified
  method modified_opt = match self#modified with [] -> None | x::_ -> Some x
  method provenance = g.Rdf_graph.objects_of ~sub ~pred: provenance
  method provenance_opt = match self#provenance with [] -> None | x::_ -> Some x
  method provenance_iris = Rdf_graph.only_iris (self#provenance)
  method provenance_opt_iri = match self#provenance_iris with [] -> None | x::_ -> Some x
  method publisher = g.Rdf_graph.objects_of ~sub ~pred: publisher
  method publisher_opt = match self#publisher with [] -> None | x::_ -> Some x
  method publisher_iris = Rdf_graph.only_iris (self#publisher)
  method publisher_opt_iri = match self#publisher_iris with [] -> None | x::_ -> Some x
  method references = g.Rdf_graph.objects_of ~sub ~pred: references
  method references_opt = match self#references with [] -> None | x::_ -> Some x
  method references_iris = Rdf_graph.only_iris (self#references)
  method references_opt_iri = match self#references_iris with [] -> None | x::_ -> Some x
  method relation = g.Rdf_graph.objects_of ~sub ~pred: relation
  method relation_opt = match self#relation with [] -> None | x::_ -> Some x
  method relation_iris = Rdf_graph.only_iris (self#relation)
  method relation_opt_iri = match self#relation_iris with [] -> None | x::_ -> Some x
  method replaces = g.Rdf_graph.objects_of ~sub ~pred: replaces
  method replaces_opt = match self#replaces with [] -> None | x::_ -> Some x
  method replaces_iris = Rdf_graph.only_iris (self#replaces)
  method replaces_opt_iri = match self#replaces_iris with [] -> None | x::_ -> Some x
  method requires = g.Rdf_graph.objects_of ~sub ~pred: requires
  method requires_opt = match self#requires with [] -> None | x::_ -> Some x
  method requires_iris = Rdf_graph.only_iris (self#requires)
  method requires_opt_iri = match self#requires_iris with [] -> None | x::_ -> Some x
  method rights = g.Rdf_graph.objects_of ~sub ~pred: rights
  method rights_opt = match self#rights with [] -> None | x::_ -> Some x
  method rights_iris = Rdf_graph.only_iris (self#rights)
  method rights_opt_iri = match self#rights_iris with [] -> None | x::_ -> Some x
  method rightsHolder = g.Rdf_graph.objects_of ~sub ~pred: rightsHolder
  method rightsHolder_opt = match self#rightsHolder with [] -> None | x::_ -> Some x
  method rightsHolder_iris = Rdf_graph.only_iris (self#rightsHolder)
  method rightsHolder_opt_iri = match self#rightsHolder_iris with [] -> None | x::_ -> Some x
  method source = g.Rdf_graph.objects_of ~sub ~pred: source
  method source_opt = match self#source with [] -> None | x::_ -> Some x
  method source_iris = Rdf_graph.only_iris (self#source)
  method source_opt_iri = match self#source_iris with [] -> None | x::_ -> Some x
  method spatial = g.Rdf_graph.objects_of ~sub ~pred: spatial
  method spatial_opt = match self#spatial with [] -> None | x::_ -> Some x
  method spatial_iris = Rdf_graph.only_iris (self#spatial)
  method spatial_opt_iri = match self#spatial_iris with [] -> None | x::_ -> Some x
  method subject = g.Rdf_graph.objects_of ~sub ~pred: subject
  method subject_opt = match self#subject with [] -> None | x::_ -> Some x
  method subject_iris = Rdf_graph.only_iris (self#subject)
  method subject_opt_iri = match self#subject_iris with [] -> None | x::_ -> Some x
  method tableOfContents = g.Rdf_graph.objects_of ~sub ~pred: tableOfContents
  method tableOfContents_opt = match self#tableOfContents with [] -> None | x::_ -> Some x
  method tableOfContents_iris = Rdf_graph.only_iris (self#tableOfContents)
  method tableOfContents_opt_iri = match self#tableOfContents_iris with [] -> None | x::_ -> Some x
  method temporal = g.Rdf_graph.objects_of ~sub ~pred: temporal
  method temporal_opt = match self#temporal with [] -> None | x::_ -> Some x
  method temporal_iris = Rdf_graph.only_iris (self#temporal)
  method temporal_opt_iri = match self#temporal_iris with [] -> None | x::_ -> Some x
  method title = Rdf_graph.literal_objects_of g ~sub ~pred: title
  method title_opt = match self#title with [] -> None | x::_ -> Some x
  method type_ = g.Rdf_graph.objects_of ~sub ~pred: type_
  method type__opt = match self#type_ with [] -> None | x::_ -> Some x
  method type__iris = Rdf_graph.only_iris (self#type_)
  method type__opt_iri = match self#type__iris with [] -> None | x::_ -> Some x
  method valid = Rdf_graph.literal_objects_of g ~sub ~pred: valid
  method valid_opt = match self#valid with [] -> None | x::_ -> Some x
  end
