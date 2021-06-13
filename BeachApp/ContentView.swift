//
//  ContentView.swift
//  BeachApp
//
//  Created by Shiza Naiyer on 6/12/21.
//

import SwiftUI

struct ContentView: View {
	@State var data: [APIData] = []

    func getData() {
        guard let url = URL(string: "https://api.coastal.ca.gov/access/v1/locations")
        else {
            print("Invalid URL")
            return
        }
        print(url)
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { data, response, error in

			if let data = data {
			  do {
				let decodedResponse = try JSONSerialization.jsonObject(with: data, options: [])
				
				var responseArray: [Any] = []
				responseArray = Array(arrayLiteral: decodedResponse)
				print(responseArray)
				print(decodedResponse)
				

				
//				for index in 0 ..< responseArray.count {
//
//					print(responseArray[index])
//				}
				
			
				
//				DispatchQueue.main.async {
//				self.data = decodedResponse
//			}
			  } catch let jsonError as NSError {
				print("JSON decode failed: \(jsonError.localizedDescription)")
			  }
			  return
			}
			
//            if let data = data {
//                if let decodedDataResponse = try? JSONDecoder().decode(BeachAPI.self, from: data) {
//                    DispatchQueue.main.async {
//                        self.data = decodedDataResponse.beachApi
//                        print(data)
//                    }
//                }
//				return
//            }

			print("Fetch failed: \(String(describing: error?.localizedDescription))")
        }
        task.resume()
    }

    var body: some View {
        List(data, id: \.id) { item in

            VStack(alignment: .leading) {
                Text(item.nameMobileWeb)
            }

            Text("Hello, world!")
                .padding()
        }
        .onAppear(perform: getData)

        Button(action: self.getData) {
            Text("Get Data")
        }
    }
}

// struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
////		ContentView(data: "APIData")
//    }
// }
