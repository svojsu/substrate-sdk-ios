import Foundation

public class GenericAccountIdNode: Node {
    public var typeName: String { GenericType.accountId.name }

    public init() {}

    public func accept(encoder: DynamicScaleEncoding, value: JSON) throws {
        try encoder.appendFixedArray(json: value, type: PrimitiveType.u8.rawValue)
    }

    public func accept(decoder: DynamicScaleDecoding) throws -> JSON {
        try decoder.readFixedArray(type: PrimitiveType.u8.rawValue, length: 32)
    }
}
