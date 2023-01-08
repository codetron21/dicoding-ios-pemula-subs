//
//  AndroidVersionModel.swift
//  AndroidVersionApp
//
//  Created by Apple on 07/01/23.
//

import Foundation

import UIKit

struct AndroidVersionModel {
    let id: Int
    let versionName: String
    let logo: UIImage?
    let description: String?
    let releaseDate: String
    let features: [String]
    let sources:String
}

let androidVersionsData = [
    AndroidVersionModel(
        id: 1,
        versionName: "Android 1.0",
        logo: UIImage(named: "ic_android"),
        description: "Android 1.0, the first commercial version of the software, was released on September 23, 2008. The first commercially available Android device was the HTC Dream",
        releaseDate: "September 23, 2008",
        features: [
            "Android Market, allowing application downloads and updates through the Market application.",
            "Web browser to show, zoom and pan full HTML and XHTML web pages – multiple pages show as windows.",
            "Camera support – however, this version lacked the option to change the camera's resolution, white balance, quality, etc."
        ],
        sources: "Wikipedia"
    ),
    AndroidVersionModel(
        id:1,
        versionName: "Android 1.1",
        logo: UIImage(named: "ic_android"),
        description: "On February 9, 2009, the Android 1.1 update was released, initially for the HTC Dream only. Android 1.1 was known as \"Petit Four\" internally, though this name was not used officially",
        releaseDate: "February 9, 2009",
        features: [
            "Details and reviews available when a user searches for businesses on Maps.",
            "Longer in-call screen timeout by default when using the speakerphone, plus the ability to show/hide the dialpad.",
            "Ability to save attachments in messages.",
            "Support added for marquee in system layouts.",
        ],
        sources: "Wikipedia"
    ),
    AndroidVersionModel(
        id:3,
        versionName: "Android 1.5 Cupcake",
        logo:UIImage(named: "ic_android_cupcake"),
        description: "On April 27, 2009, the Android 1.5 update was released, based on Linux kernel 2.6.27. This was the first release to officially use a codename based on a dessert item (\"Cupcake\"), a theme used for all releases until Android Pie, with Android 10 using a number-only system.",
        releaseDate: "April 27, 2009",
        features: [
            "Support for third-party virtual keyboards with text prediction and a user dictionary for custom words.",
            "Support for Widgets – miniature application views that can be embedded in other applications (such as the Home screen) and receive periodic updates.",
            "Video recording and playback in MPEG-4 and 3GP formats.",
        ],
        sources: "Wikipedia"
    ),
    AndroidVersionModel(
        id:4,
        versionName: "Android 1.6 Donut",
        logo: UIImage(named: "ic_android_donut"),
        description: "On September 15, 2009, Android 1.6 – dubbed Donut – was released, based on Linux kernel 2.6.29",
        releaseDate: "September 15, 2009",
        features: [
            "Voice and text entry search enhanced to include bookmark history, contacts, and the web.",
            "Ability for developers to include their content in search results.",
        ],
        sources: "Wikipedia"
    ),
    AndroidVersionModel(
        id:5,
        versionName: "Android 2.0 Eclair",
        logo: UIImage(named: "ic_android_eclair"),
        description: "On October 27, 2009, the Android 2.0 SDK was released, based on Linux kernel 2.6.29 and codenamed Eclair.",
        releaseDate: "October 27, 2009",
        features: [
            "Expanded Account sync, allowing users to add multiple accounts to a device for synchronization of an email and contacts.",
            "Microsoft Exchange email support, with a combined inbox to browse an email from multiple accounts in one page.",
        ],
        sources: "Wikipedia"
    ),
    AndroidVersionModel(
        id:6,
        versionName: "Android 2.0.1 Eclair",
        logo: UIImage(named: "ic_android_eclair"),
        description: nil,
        releaseDate: "December 3, 2009",
        features: [
            "Minor API changes, bug fixes and framework behavioral changes."
        ],
        sources: "Wikipedia"
    ),
    AndroidVersionModel(
        id:7,
        versionName: "Android 2.1 Eclair",
        logo: UIImage(named: "ic_android_eclair"),
        description: nil,
        releaseDate: "January 11, 2010",
        features: [
            "Minor amendments to the API and bug fixes."
        ],
        sources: "Wikipedia"
    ),
    AndroidVersionModel(
        id:8,
        versionName: "Android 2.2 Froyo",
        logo:UIImage(named: "ic_android_froyo"),
        description: "On May 20, 2010, the SDK for Android 2.2 (Froyo, short for frozen yogurt) was released, based on Linux kernel 2.6.32.",
        releaseDate: "May 20, 2010",
        features: [
            "Speed, memory, and performance optimizations.",
            "Additional application speed improvements, implemented through JIT compilation.",
            "Integration of Chrome's V8 JavaScript engine into the Browser application."
        ],
        sources: "Wikipedia"
    ),
    AndroidVersionModel(
        id:9,
        versionName: "Android 2.3 Gingerbread",
        logo:UIImage(named: "ic_android_ginger"),
        description: "On December 6, 2010, the Android 2.3 (Gingerbread) SDK was released, based on Linux kernel 2.6.35.",
        releaseDate: "December 6, 2010",
        features: [
            "Updated user interface design with increased simplicity and speed.",
            "Support for extra-large screen sizes and resolutions (WXGA and higher).",
            "Native support for SIP VoIP internet telephones."
        ],
        sources: "Wikipedia"
    ),
    AndroidVersionModel(
        id:10,
        versionName: "Android 2.3.3 Gingerbread",
        logo:UIImage(named: "ic_android_ginger"),
        description: nil,
        releaseDate: "February 9, 2011",
        features: [
            "Several improvements and API fixes."
        ],
        sources: "Wikipedia"
    ),
]
