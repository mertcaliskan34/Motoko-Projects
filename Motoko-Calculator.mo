// this is a calculator

actor calculator {
  var cell : Int = 0;
  //summing function
  public func sum(n : Int) : async Int {
    cell += n;
    cell;
  };
  //subtracting function
  public func sub(n : Int) : async Int {
    cell -= n;
    cell;
  };
  //multiplying function
  public func mult(n : Int) : async Int {
    cell *= n;
    cell;
  };
  //dividing function
  public func div(n : Int) : async ?Int {
    if (n == 0) {
      null;
    } else {
      cell /= n;
      ?cell;
    };
  };
  //cleaning function
  public func clean() : async () {
    cell := 0;
  };
};