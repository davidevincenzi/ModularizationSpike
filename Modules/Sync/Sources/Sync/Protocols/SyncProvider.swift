import Persistence

public protocol SyncProvider {
    func startSync(dataSource: DocumentsDataSource, completion: @escaping (() -> Void))
}
