import Foundation
//You can use defaults to save User preferences
//eg: declare defaults
let defaults = UserDefaults.standard


//set their preferences
defaults.set(0.24, forKey: "Volume")
defaults.set(Date(), forKey: "AppLastOpened")


//access their preference
let lastOpen = defaults.object(forKey: "AppLastOpened") //2019-03-21 23:07:56
let volume = defaults.float(forKey:"Volume") //0.24

