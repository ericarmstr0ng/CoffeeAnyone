//
//  CameraPicker.swift
//  CoffeeAnyone
//
//  Created by Nick Schaffner on 2/24/20.
//  Copyright © 2020 Dating App. All rights reserved.
//

import SwiftUI
import Firebase

class CameraPickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    @Binding var text: Text?
    let options = VisionFaceDetectorOptions()
    lazy var vision = Vision.vision()
    
    init(isShown: Binding<Bool>, image: Binding<Image?>, text: Binding<Text?>) {
        _isShown = isShown
        _image = image
        _text = text
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        //https://www.youtube.com/watch?v=zfJtgq609EE
        let storage = Storage.storage()
        
        storage.reference(withPath: "profilePics/1.jpg").putData(uiImage.jpegData(compressionQuality: 0.75)!, metadata: nil) { (_, err) in
            
            if err != nil{
                print((err?.localizedDescription)!)
                return
            }
            print("Success")
        }
        
        options.performanceMode = .accurate
        options.landmarkMode = .all
        options.classificationMode = .all
        
        let faceDetector = vision.faceDetector(options: options)
        let newImage = VisionImage(image: uiImage)
        //var newText = "Face Detected"
        //var count = 1
        faceDetector.process(newImage) { faces, error in
            guard error == nil, let faces = faces, !faces.isEmpty else {
                print("Print: No Face Detected")
                //newText = "No Face Detected"
                self.text = Text("No Face Detected")
                return
            }
            print("Print: Face Detected")
            self.text = Text("Face Detected")
        }
        
        image = Image(uiImage: uiImage)
        isShown = false
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        isShown = false
    }
    
}

struct CameraPicker: UIViewControllerRepresentable {
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    @Binding var text: Text?
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<CameraPicker>) {
        
    }
    
    func makeCoordinator() -> CameraPickerCoordinator {
        return CameraPickerCoordinator(isShown: $isShown, image: $image, text: $text)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CameraPicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .camera
        return picker
    }
    
}

