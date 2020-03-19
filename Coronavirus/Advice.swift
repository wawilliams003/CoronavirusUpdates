//
//  Advice.swift
//  Coronavirus
//
//  Created by Iam Wayne on 3/2/20.
//  Copyright © 2020 Iam Wayne. All rights reserved.
//

import Foundation


struct AdviceForPublic {
    
    let title: String
    let description: String
    let imageString: String

}

enum imageString: String {
    case one = "mythbusters-1", two = "mythbusters-2", three = "mythbusters-3"
    case four = "mythbusters-4", five = "mythbusters-5", six = "mythbuster-6"
    case seven = "mythbusters-7", eight = "mythbusters-8", nine = "mythbusters-9"
    case ten = "mythbusters-10", eleven = "mythbuster-11", thirteen = "mythbuster-13"
    case fourteen = "mythbuster-14", fifteen = "mythbuster-15"
    
}


typealias mythbuster = String

let advice1 = AdviceForPublic(title: "Are hand dryers effective in killing the new coronavirus?", description: "No. Hand dryers are not effective in killing the 2019-nCoV. To protect yourself against the new coronavirus, you should frequently clean your hands with an alcohol-based hand rub or wash them with soap and water. Once your hands are cleaned, you should dry them thoroughly by using paper towels or a warm air dryer.", imageString: imageString.one.rawValue)

let advice2 = AdviceForPublic(title: "Can an ultraviolet disinfection lamp kill the new coronavirus?", description: "UV lamps should not be used to sterilize hands or other areas of skin as UV radiation can cause skin irritation.", imageString: imageString.two.rawValue)

let advice3 = AdviceForPublic(title: "How effective are thermal scanners in detecting people infected with the new coronavirus?", description: "Thermal scanners are effective in detecting people who have developed a fever (i.e. have a higher than normal body temperature) because of infection with the new coronavirus. \n \n However, they cannot detect people who are infected but are not yet sick with fever. This is because it takes between 2 and 10 days before people who are infected become sick and develop a fever.", imageString: imageString.three.rawValue)

let advice4 = AdviceForPublic(title: "Can spraying alcohol or chlorine all over your body kill the new coronavirus?", description: "No. Spraying alcohol or chlorine all over your body will not kill viruses that have already entered your body. Spraying such substances can be harmful to clothes or mucous membranes (i.e. eyes, mouth). Be aware that both alcohol and chlorine can be useful to disinfect surfaces, but they need to be used under appropriate recommendations.", imageString: imageString.four.rawValue)

let advice5 = AdviceForPublic(title: "Is it safe to receive a letter or a package from China?", description: "Yes, it is safe. People receiving packages from China are not at risk of contracting the new coronavirus. From previous analysis, we know coronaviruses do not survive long on objects, such as letters or packages.", imageString: imageString.five.rawValue)

let advice6 = AdviceForPublic(title: "Can pets at home spread the new coronavirus (2019-nCoV)?", description: "At present, there is no evidence that companion animals/pets such as dogs or cats can be infected with the new coronavirus. However, it is always a good idea to wash your hands with soap and water after contact with pets. This protects you against various common bacteria such as E.coli and Salmonella that can pass between pets and humans.", imageString: imageString.six.rawValue)

let advice7 = AdviceForPublic(title: "Do vaccines against pneumonia protect you against the new coronavirus?", description: """
No. Vaccines against pneumonia, such as pneumococcal vaccine and Haemophilus influenza type B (Hib) vaccine, do not provide protection against the new coronavirus.

The virus is so new and different that it needs its own vaccine. Researchers are trying to develop a vaccine against 2019-nCoV, and WHO is supporting their efforts.

Although these vaccines are not effective against 2019-nCoV, vaccination against respiratory illnesses is highly recommended to protect your health.

""", imageString: imageString.seven.rawValue)

let advice8 = AdviceForPublic(title: "Can regularly rinsing your nose with saline help prevent infection with the new coronavirus? ", description: """
No. There is no evidence that regularly rinsing the nose with saline has protected people from infection with the new coronavirus.

There is some limited evidence that regularly rinsing nose with saline can help people recover more quickly from the common cold. However, regularly rinsing the nose has not been shown to prevent respiratory infections.
""", imageString: imageString.eight.rawValue)

let advice9 = AdviceForPublic(title: "Can eating garlic help prevent infection with the new coronavirus? ", description: "Garlic is a healthy food that may have some antimicrobial properties. However, there is no evidence from the current outbreak that eating garlic has protected people from the new coronavirus.", imageString: imageString.nine.rawValue)

let advice10 = AdviceForPublic(title: "Does putting on sesame oil block the new coronavirus from entering the body?", description: """
No. Sesame oil does not kill the new coronavirus. There are some chemical disinfectants that can kill the 2019-nCoV on surfaces. These include bleach/chlorine-based disinfectants, either solvents, 75% ethanol, peracetic acid and chloroform.

However, they have little or no impact on the virus if you put them on the skin or under your nose. It can even be dangerous to put these chemicals on your skin.

""", imageString: imageString.ten.rawValue)

let advice11 = AdviceForPublic(title: "Does the new coronavirus affect older people, or are younger people also susceptible? ", description: """
People of all ages can be infected by the new coronavirus (2019-nCoV). Older people, and people with pre-existing medical conditions (such as asthma, diabetes, heart disease) appear to be more vulnerable to becoming severely ill with the virus.

WHO advises people of all ages to take steps to protect themselves from the virus, for example by following good hand hygiene and good respiratory hygiene.
""", imageString: imageString.eleven.rawValue)

let advice12 = AdviceForPublic(title: "Are antibiotics effective in preventing and treating the new coronavirus? ", description: """
No, antibiotics do not work against viruses, only bacteria.

The new coronavirus (2019-nCoV) is a virus and, therefore, antibiotics should not be used as a means of prevention or treatment.

However, if you are hospitalized for the 2019-nCoV, you may receive antibiotics because bacterial co-infection is possible.

""", imageString: imageString.fourteen.rawValue)

let advice13 = AdviceForPublic(title: "Are there any specific medicines to prevent or treat the new coronavirus? ", description: """
To date, there is no specific medicine recommended to prevent or treat the new coronavirus (2019-nCoV).

However, those infected with the virus should receive appropriate care to relieve and treat symptoms, and those with severe illness should receive optimized supportive care. Some specific treatments are under investigation, and will be tested through clinical trials. WHO is helping to accelerate research and development efforts with a range or partners.

""", imageString: imageString.thirteen.rawValue)

//let advice14 = AdviceForPublic(title: "", description: <#T##String#>, imageString: <#T##String#>)
