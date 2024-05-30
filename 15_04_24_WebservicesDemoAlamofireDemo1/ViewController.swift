//
//  ViewController.swift
//  15_04_24_WebservicesDemoAlamofireDemo1
//
//  Created by Vishal Jagtap on 30/05/24.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    var url : URL?
    var urlRequest : URLRequest?
    var recipes : [Recipe] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        url = URL(string:"https://dummyjson.com/recipes")
        urlRequest = URLRequest(url: url!)
        urlRequest?.httpMethod = "GET"
        jsonParsingUsingAlamofire(urlRequest1 : urlRequest!)
    }

    func jsonParsingUsingAlamofire(urlRequest1 : URLRequest){
        AF.request(urlRequest1).response { response in
            response.result
            
             switch response.result{
                case .success(let data):
                let apiResponse = try! JSONDecoder().decode(APIResponse.self, from: data!)
                self.recipes = apiResponse.recipes
                
                for eachRecipe in self.recipes{
                    print(eachRecipe)
                }
                
                //apiResponse.recipes
                print("Total \(apiResponse.total) -- limit  \(apiResponse.limit) -- skip \(apiResponse.skip)")
            case .failure(let error):
                print("Error in fetching response \(error)")
            }
        }
    }
}

