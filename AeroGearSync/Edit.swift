import Foundation

public class Edit: Equatable {
    public let clientId: String
    public let documentId: String
    public let clientVersion: UInt64
    public let serverVersion: UInt64
    public let checksum: String
    public let diffs: Array<Edit.Diff>

    public init(clientId: String, documentId: String, clientVersion: UInt64, serverVersion: UInt64, checksum: String, diffs: Array<Edit.Diff>) {
        self.clientId = clientId
        self.documentId = documentId
        self.clientVersion = clientVersion
        self.serverVersion = serverVersion
        self.checksum = checksum
        self.diffs = diffs
    }
    
    public enum Operation {
        case Add, Delete, Unchanged
    }
    
    public class Diff {
    
        let operation: Operation
        let text: String
    
        public init(operation: Operation, text: String) {
            self.operation = operation
            self.text = text
        }
    }

}

public func ==(lhs: Edit, rhs: Edit) -> Bool {
    return lhs.clientId == rhs.clientId &&
        lhs.documentId == rhs.documentId &&
        lhs.serverVersion == rhs.serverVersion &&
        lhs.checksum == rhs.checksum &&
        lhs.diffs.count == rhs.diffs.count
}

