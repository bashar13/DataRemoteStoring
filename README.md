# DataRemoteStoring
Assumption: We are considering the remote servers receive or send data in a key-value pair data format such as JSON. 
            We are using the HTTP method PUSH to store data.
            
Solution 1: We can use Codable protocol to encode the data objects into a key-value pair format. We can use JSONEncoder to convert the data
object into a JSON object. We can also use PropertyListEncoder for pList type. By this way, we don't need to modify the data model class source code, if the remote store changes to something else but supports the JSON data type. We can also use JSONDecoder to decode a received JSON object from the server
into a data object.

Assumption: We assume that RPAnnotation is a class that can contain a list of RPComment objects. People do comments on annotations.

Solution 2: We can use the composite pattern from Cocoa design patterns, where RPAnnotation class can act as a composite class and RPComment class is
the leaf class. Both classes implement the Codable protocol and in this way, we can encode the objects to a key-value pair data type similarly.
