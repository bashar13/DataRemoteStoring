# DataRemoteStoring
Assumption: We are considering the remote servers receive or send data in a key-value pair data format such as JSON. 
            We are using the HTTP method PUSH to store data.
            
Solution 1: We can use Codable protocol to encode the data objects into a key-value pair format. We can use JSONEncoder to convert the data object into JSON. I have implemented a RemoteStorageManager class which adapts the Singleton pattern of Cocoa design patterns. The RemoteStorageManager class has only one instance which is shared in the full application. This class handles all kind of networking calls. So, we do not need to bother about server change outside of this class. This class implements a closure that receives a data model object and pushes that data to the remote server. So, in case of any server change we just need to modify some codebase in this class to convert the data object into the specific data type.

Assumption: We assume that RPAnnotation is a class that can contain a list of RPComment objects. People do comments on annotations.

Solution 2: We can use the composite pattern from Cocoa design patterns, where RPAnnotation class can act as a composite class and RPComment class is
the leaf class. Both classes implement the Codable protocol and in this way, we can encode the objects to a key-value pair data type similarly.
