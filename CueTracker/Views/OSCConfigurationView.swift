//
//  OSCConfigurationView.swift
//  CueTracker
//
//  Created by Jack Justus on 11/23/24.
//

import SwiftUI

struct OSCConfigurationView: View {
    
    @State var portNumber : Double
    @State var portTempString : String = "8000"
    
    @State var selectedProtocol : String = "UDP"
    
    @State var selectedConsole : String = "ETC_Eos"
    
    @State var targetExternalIP : String = ""
    @State var targetInternalIP : String = "172.0.0.1"
    @State var localOSCRequest : Bool = false
    
    var body: some View {
        VStack {
            
            Text("OSC Configuration Menu")
                .font(.largeTitle)
            
            Form {
                // Port selection
                TextField("Port", text: $portTempString)
                    .onSubmit {
                        portNumber = Double(portTempString) ?? portNumber
                    }
                    .textFieldStyle(.roundedBorder)
                Picker("Protocol", selection: $selectedProtocol) {
                    Text("UDP").tag("UDP")
//                    Text("TCP").tag("TCP")  // TCP isnt supported yet by OSCKit
                }
                    
                TextField("Target IP",
                          text: localOSCRequest ? $targetInternalIP : $targetExternalIP)
                    .textFieldStyle(.roundedBorder)
                    .disabled(localOSCRequest)
                
                HStack {
                    Toggle("Console is on this device", isOn: $localOSCRequest)
                }
                    
                
                Divider()
                
                Picker("Target Console", selection: $selectedConsole) {
                    Text("ETC Eos").tag("ETC_Eos")
                }
                
                
            }
            .font(.title3)
            .formStyle(.automatic)
            
            Text("Port: \(portNumber)")
            Text("Port: \(targetExternalIP)")
            Text("Port: \(targetInternalIP)")
            Text("Port: \(localOSCRequest)")
            
            
        }
        .padding()
        .frame(minWidth: 400 ,idealWidth: 400)
    }
}

#Preview {
    OSCConfigurationView(portNumber: 4)
}
