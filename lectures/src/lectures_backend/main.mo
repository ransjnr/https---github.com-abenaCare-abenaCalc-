//simple calculator

//features
/**
addition
substration
divide
multiplication
unique functionality
**/

import Debug "mo:base/Debug";
import Float "mo:base/Float";

actor AbenaCalc {
    // Storing the last result
    private stable var lastResult: Float = 0.0;

//function for addition
    public func add(x: Float, y: Float): async Float {
        lastResult := x + y;
        return lastResult;
    };
//function for subtraction
    public func subtract(x: Float, y: Float): async Float {
        lastResult := x - y;
        return lastResult;
    };

   //function for multiplication
    public func multiply(x: Float, y: Float): async Float {
        lastResult := x * y;
        return lastResult;
    };
//function for division
    public func divide(x: Float, y: Float): async ?Float {
        if (y == 0) {
            return null; 
        };
        //orthogonal persistence
        lastResult := x / y;
        return ?lastResult;
    };
//function to retrieve the last result
    public query func getLastResult(): async Float {
        return lastResult;
    };

//unique function to clear last result
    public func clear(): async () {
        lastResult := 0.0;
    };
}