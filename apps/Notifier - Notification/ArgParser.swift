//
//  ArgParser.swift
//  Notifier - Notifications
//
//  Created by David Norris on 10/05/2022.
//  Copyright © 2022 dataJAR Ltd. All rights reserved.
//

import ArgumentParser

struct argParser: ParsableCommand {

    static let configuration = CommandConfiguration(
        abstract: "Notifier: Sends banner or alert notifications.",
        usage: "--type <alert/banner> --message <some message> <options>"
    )
    
    @Option(help: "message text - REQUIRED")
      var message: String?
    
    @Option(help: "The action to be performed when the message is clicked. Either pass 'logout' or path to item to open on click. Can be a .app, file, URL etc. With non-.app items being opened in their default handler")
      var messageaction: String?
    
    @Option(help: "alert or banner - REQUIRED")
      var type: String?
    
    @Option(help: "sound to play. Pass \"default\" for the default macOS sound, else the name of a sound in /Library/Sounds or /System/Library/Sounds. If the sound cannot be found, macOS will use the \"default\" sound")
      var sound: String?
    
    @Option(help: "message subtitle")
      var subtitle: String?
    
    @Option(help: "message title")
      var title: String?
    
    @Option(help: "\"prior\" or \"all\". If passing \"prior\", the full message will be required too. Including all passed flags")
      var remove: String?
    
    @Option(help: "Enables logging of actions. Check console for  'Notifier Log:' messages")
      var verbose: Bool?
    

}

