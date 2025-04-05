import Foundation
import CreateML


//: Create a URL path to your dataset and load it into a new MLDataTable
let filePath = Bundle.main.url(forResource: "appleStore_description", withExtension: "csv")
let data = try MLDataTable(contentsOf: filePath!)

//: Create two mutually exclusive, randomly divided subsets of the data table
//: The trainingData will hold the larger portion of rows
let (trainingData, testData) = data.randomSplit(by:0.8)

//: Create your TextClassifier model using the trainingData
//: This is where the `training` happens and will take a few minutes
let model = try MLTextClassifier(trainingData: trainingData, textColumn: "app_desc", labelColumn: "app_name")

//: Test the performance of the model before saving it. See an example of the error report below
let metrics = model.evaluation(on: testData, textColumn: "app_desc", labelColumn: "app_name")
print(metrics.classificationError)


let modelPath = URL(fileURLWithPath: "/Users/arturknothe/Desktop/AppReviewClassifier.mlmodel")
try model.write(to: modelPath)
