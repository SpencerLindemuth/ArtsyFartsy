require 'rest-client'
require 'json'

PUBLIC_DOMAIN_URL = 'https://collectionapi.metmuseum.org/public/collection/v1/objects?&departmentIds=11'

INDIVIDUAL_URL = 'https://collectionapi.metmuseum.org/public/collection/v1/objects/'

def get_public_ids()
    response = RestClient.get(PUBLIC_DOMAIN_URL)
    get_individual_objects(JSON.parse(response))
end

# get_individual_objects(object) do
#     object.objectIDs each do |id|
#         response = RestClient.get(individual_url + id)
#         new_piece = JSON.parse(response)
#         persist_to_db(new_piece)
#     end
# end

def get_individual_objects(object)
    object["objectIDs"].each do |id|
        response = RestClient.get(INDIVIDUAL_URL + "#{id}")
        new_piece = JSON.parse(response)
        persist_to_db(new_piece)
    end
end

def persist_to_db(piece)
    Piece.create(isHighlight: piece["isHighlight"], primaryImage: piece["primaryImage"], primaryImageSmall: piece["primaryImageSmall"], department: piece["department"], objectName: piece["objectName"], title: piece['title'], culture: piece['culture'], artistDisplayName: piece['artistDisplayName'], objectDate: piece['objectDate'], medium: piece['medium'], dimensions: piece['dimensions'], classification: piece['classification'], repository: piece['repository'], objectURL: piece['objectUrl'], tags: piece['tags'], country: piece['country'], artistNationality: piece['artistNationality'])
end

get_public_ids()