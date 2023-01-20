import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";

actor {
    //3
    public shared ({caller}) func is_anynomous() : async Bool {
        Principal.isAnonymous(caller);
    };

    //5
    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
        usernames.put(caller, name);
    };

    public func get_usernames() : async [(Principal, Text)]{
        Iter.toArray(usernames.entries());
    };
    
}