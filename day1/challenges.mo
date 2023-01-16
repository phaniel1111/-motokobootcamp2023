actor {
  var counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}