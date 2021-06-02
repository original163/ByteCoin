
import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "8FABC1DE-C2CB-489A-AC78-7C4E9EBB6EB6"
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    
    
    func getCoinPrice(currency: String) {
        
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        perfomRequest(url: urlString)
    }
    
    func perfomRequest(url: String)  {
        
        // 1. Create a URL
        if let url = URL(string: url) {
            
            // 2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            // 3. Give the session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            // 4. Start the task
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        
        if error != nil {
            print(error!)
            return
        }
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            
        }
    }
}

