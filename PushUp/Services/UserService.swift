import Foundation
import FirebaseAuth

protocol UserServiceProtocol {
    func currentUser() -> AnyPublisher<User, Error>
    
}
