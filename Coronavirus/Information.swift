//
//  Information.swift
//  Coronavirus
//
//  Created by Iam Wayne on 2/28/20.
//  Copyright © 2020 Iam Wayne. All rights reserved.
//

import Foundation


struct Information {
    let title: String
    let detail: String
    let order: Int
    var opened: Bool
}

let one = Information(title: "What is Coronavirus", detail: "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19.", order: 0, opened: false)

let two = Information(title: "What is COVID-19?", detail: "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019.", order: 1, opened: false)

let three = Information(title: "What are the symptoms of COVID-19?", detail: "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. About 2% of people with the disease have died. People with fever, cough and difficulty breathing should seek medical attention.", order: 2, opened: false)

/*
let four = Information(title: "How does COVID-19 spread?", detail: "People can catch COVID-19 from others who have the virus. The disease can spread from person to person through small droplets from the nose or mouth which are spread when a person with COVID-19 coughs or exhales. These droplets land on objects and surfaces around the person. Other people then catch COVID-19 by touching these objects or surfaces, then touching their eyes, nose or mouth. People can also catch COVID-19 if they breathe in droplets from a person with COVID-19 who coughs out or exhales droplets. This is why it is important to stay more than 1 meter (3 feet) away from a person who is sick. \n \n WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share updated findings.", order: 3, opened: false)
*/
let four = Information(title: "How does COVID-19 spread?", detail: """
People can catch COVID-19 from others who have the virus. The disease can spread from person to person through small droplets from the nose or mouth which are spread when a person with COVID-19 coughs or exhales. These droplets land on objects and surfaces around the person. Other people then catch COVID-19 by touching these objects or surfaces, then touching their eyes, nose or mouth. People can also catch COVID-19 if they breathe in droplets from a person with COVID-19 who coughs out or exhales droplets. This is why it is important to stay more than 1 meter (3 feet) away from a person who is sick.

WHO is assessing ongoing research on the ways COVID-19 is spread and will∙• continue to share updated findings.

∙ Can the virus that causes COVID-19 be transmitted through the air?

Studies to date suggest that the virus that causes COVID-19 is mainly transmitted through contact with respiratory droplets rather than through the air.  See previous answer on “How does COVID-19 spread?”

∙ Can CoVID-19 be caught from a person who has no symptoms?

The main way the disease spreads is through respiratory droplets expelled by someone who is coughing. The risk of catching COVID-19 from someone with no symptoms at all is very low. However, many people with COVID-19 experience only mild symptoms. This is particularly true at the early stages of the disease. It is therefore possible to catch COVID-19 from someone who has, for example, just a mild cough and does not feel ill.  WHO is assessing ongoing research on the period of transmission of COVID-19 and will continue to share updated findings.

∙ Can I catch COVID-19 from the feces of someone with the disease?

The risk of catching COVID-19 from the feces of an infected person appears to be low. While initial investigations suggest the virus may be present in feces in some cases, spread through this route is not a main feature of the outbreak. WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings. Because this is a risk, however, it is another reason to clean hands regularly, after using the bathroom and before eating.
""", order: 3, opened: false)



let five = Information(title: "What can I do to protect myself and prevent the spread of disease?", detail: """
Protection measures for everyone

Stay aware of the latest information on the COVID-19 outbreak, available on the WHO website and through your national and local public health authority. COVID-19 is still affecting mostly people in China with some outbreaks in other countries. Most people who become infected experience mild illness and recover, but it can be more severe for others. Take care of your health and protect others by doing the following:

∙ Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water.
Why? Washing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.
∙ Maintain at least 1 metre (3 feet) distance between yourself and anyone who is coughing or sneezing.
Why? When someone coughs or sneezes they spray small liquid droplets from their nose or mouth which may contain virus. If you are too close, you can breathe in the droplets, including the COVID-19 virus if the person coughing has the disease.
∙ Avoid touching eyes, nose and mouth.
Why? Hands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and can make you sick.
∙ Make sure you, and the people around you, follow good respiratory hygiene. This means covering your mouth and nose with your bent elbow or tissue when you cough or sneeze. Then dispose of the used tissue immediately.
Why? Droplets spread virus. By following good respiratory hygiene you protect the people around you from viruses such as cold, flu and COVID-19.
∙ Stay home if you feel unwell. If you have a fever, cough and difficulty breathing, seek medical attention and call in advance. Follow the directions of your local health authority.
Why? National and local authorities will have the most up to date information on the situation in your area. Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also protect you and help prevent spread of viruses and other infections.
∙ Stay informed on the latest developments about COVID-19. Follow advice given by your healthcare provider, your national and local public health authority or your employer on how to protect yourself and others from COVID-19.
Why? National and local authorities will have the most up to date information on whether COVID-19 is spreading in your area. They are best placed to advise on what people in your area should be doing to protect themselves.

Protection measures for persons who are in or have recently visited (past 14 days) areas where COVID-19 is spreading

∙ Follow the guidance outlined above. (Protection measures for everyone)
∙ Stay at home if you begin to feel unwell, even with mild symptoms such as headache and slight runny nose, until you recover.
Why? Avoiding contact with others and visits to medical facilities will allow these facilities to operate more effectively and help protect you and others from possible COVID-19 and other viruses.

∙ If you develop fever, cough and difficulty breathing, seek medical advice promptly as this may be due to a respiratory infection or other serious condition. Call in advance and tell your provider of any recent travel or contact with travelers.
Why? Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also help to prevent possible spread of COVID-19 and other viruses.
""", order: 4, opened: false)


let six = Information(title: "How likely am I to catch COVID-19?", detail: "The risk depends on where you live or where you have travelled recently. The risk of infection is higher in areas where a number people have been diagnosed with COVID-19. More than 95% of all COVID-19 cases are occurring in China, with the majority of those in Hubei Province. For people in most other parts of the world, your risk of getting COVID-19 is currently low, however, it’s important to be aware of the situation and preparedness efforts in your area. \n \n WHO is working with health authorities in China and around the world to monitor and respond to COVID-19 outbreaks.", order: 5, opened: false)

let seven = Information(title: "Should I worry about COVID-19?", detail: "If you are not in an area where COVID-19 is spreading, or if you have not travelled from one of those areas or have not been in close contact with someone who has and is feeling unwell, your chances of getting it are currently low. However, it’s understandable that you may feel stressed and anxious about the situation. It’s a good idea to get the facts to help you accurately determine your risks so that you can take reasonable precautions. Your healthcare provider, your national public health authority and your employer are all potential sources of accurate information on COVID-19 and whether it is in your area. It is important to be informed of the situation where you live and take appropriate measures to protect yourself. (See Protection measures for everyone). \n \n If you are in an area where there is an outbreak of COVID-19 you need to take the risk of infection seriously. Follow the advice issued by national and local health authorities. Although for most people COVID-19 causes only mild illness, it can make some people very ill. More rarely, the disease can be fatal. Older people, and those with pre-existing medical conditions (such as high blood pressure, heart problems or diabetes) appear to be more vulnerable.", order: 6, opened: false)


let eight = Information(title: "Who is at risk of developing severe illness?", detail: "While we are still learning about how COVID-2019 affects people, older persons and persons with pre-existing medical conditions (such as high blood pressure, heart disease, or diabetes) appear to develop serious illness more often than others. ", order: 7, opened: false)


let nine = Information(title: "Are antibiotics effective in preventing or treating the COVID-19?", detail: "No. Antibiotics do not work against viruses, they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. They should only be used as directed by a physician to treat a bacterial infection. ", order: 8, opened: false)

let ten = Information(title: "Is there a vaccine, drug or treatment for COVID-19?", detail: """
 Not yet. To date, there is no vaccine and no specific antiviral medicine to prevent or treat COVID-2019. However, those affected should receive care to relieve symptoms. People with serious illness should be hospitalized. Most patients recover thanks to supportive care.

 Possible vaccines and some specific drug treatments are under investigation. They are being tested through clinical trials. WHO is coordinating efforts to develop vaccines and medicines to prevent and treat COVID-19.

 The most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue, and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing. For more information, see basic protective measures against the new coronavirus
 """, order: 9, opened: false)

let eleven = Information(title: "Is COVID-19 the same as SARS?", detail: "No. The virus that causes COVID-19 and the one that causes Severe Acute Respiratory Syndrome (SARS) are related to each other genetically, but they are different. SARS is more deadly but much less infectious than COVID-19. There have been no outbreaks of SARS anywhere in the world since 2003.", order: 10, opened: false)

let twelve = Information(title: "Should I wear a mask to protect myself?", detail: """
People with no respiratory symptoms, such as cough, do not need to wear a medical mask. WHO recommends the use of masks for people who have symptoms of COVID-19 and for those caring for individuals who have symptoms, such as cough and fever. The use of masks is crucial for health workers and people who are taking care of someone (at home or in a health care facility).

WHO advises rational use of medical masks to avoid unnecessary wastage of precious resources and mis-use of masks (see Advice on the use of masks). Use a mask only if you have respiratory symptoms (coughing or sneezing), have suspected COVID-19 infection with mild symptoms, or are caring for someone with suspected COVID-19 infection. A suspected COVID-19 infection is linked to travel in areas where cases have been reported, or close contact with someone who has travelled in these areas and has become ill.

The most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing. For more information, see basic protective measures against the new coronavirus.
""", order: 11, opened: false)

let thirteen = Information(title: "How to put on, use, take off and dispose of a mask?", detail: """
1. Remember, a mask should only be used by health workers, care takers, and individuals with respiratory symptoms, such as fever and cough.
2. Before touching the mask, clean hands with an alcohol-based hand rub or soap and water
3. Take the mask and inspect it for tears or holes.
4. Orient which side is the top side (where the metal strip is).
5. Ensure the proper side of the mask faces outwards (the coloured side).
6. Place the mask to your face. Pinch the metal strip or stiff edge of the mask so it moulds to the shape of your nose.
7. Pull down the mask’s bottom so it covers your mouth and your chin.
8. After use, take off the mask; remove the elastic loops from behind the ears while keeping the mask away from your face and clothes, to avoid touching potentially contaminated surfaces of the mask.
9. Discard the mask in a closed bin immediately after use.
10. Perform hand hygiene after touching or discarding the mask – Use alcohol-based hand rub or, if visibly soiled, wash your hands with soap and water.
""", order: 12, opened: false)

let fourteen = Information(title: "How long is the incubation period for COVID-19?", detail: "The “incubation period” means the time between catching the virus and beginning to have symptoms of the disease. Most estimates of the incubation period for COVID-19 range from 1-14 days, most commonly around five days. These estimates will be updated as more data become available.", order: 13, opened: false)

let fifteen = Information(title: "Can humans become infected with the COVID-19 from an animal source?", detail: """
Coronaviruses are a large family of viruses that are common in animals. Rarely, people get infected with these viruses which may then spread to other people. For example, SARS-CoV was associated with civet cats and MERS-CoV is transmitted by dromedary camels. Possible animal sources of COVID-19 have not yet been confirmed.

To protect yourself, such as when visiting live animal markets, avoid direct contact with animals and surfaces in contact with animals. Ensure good food safety practices at all times. Handle raw meat, milk or animal organs with care to avoid contamination of uncooked foods and avoid consuming raw or undercooked animal products.
""", order: 14, opened: false)

let sixteen = Information(title: "Can I catch COVID-19 from my pet?", detail: "No. There is no evidence that companion animals or pets such as cats and dogs have been infected or could spread the virus that causes COVID-19.", order: 15, opened: false)

let seventeen = Information(title: "How long does the virus survive on surfaces?", detail: """
It is not certain how long the virus that causes COVID-19 survives on surfaces, but it seems to behave like other coronaviruses. Studies suggest that coronaviruses (including preliminary information on the COVID-19 virus) may persist on surfaces for a few hours or up to several days. This may vary under different conditions (e.g. type of surface, temperature or humidity of the environment).

If you think a surface may be infected, clean it with simple disinfectant to kill the virus and protect yourself and others. Clean your hands with an alcohol-based hand rub or wash them with soap and water. Avoid touching your eyes, mouth, or nose.
""", order: 16, opened: false)

let eightteen = Information(title: "Is it safe to receive a package from any area where COVID-19 has been reported?", detail: "Yes. The likelihood of an infected person contaminating commercial goods is low and the risk of catching the virus that causes COVID-19 from a package that has been moved, travelled, and exposed to different conditions and temperature is also low.", order: 17, opened: false)

let nineteen = Information(title: "Is there anything I should not do?", detail: """
The following measures ARE NOT effective against COVID-2019 and can be harmful:

Smoking
Taking traditional herbal remedies
Wearing multiple masks
Taking self-medication such as antibiotics
In any case, if you have fever, cough and difficulty breathing seek medical care early to reduce the risk of developing a more severe infection and be sure to share your recent travel history with your health care provider.
""", order: 18, opened: false)



let data = """
Why? Droplets spread virus. By following good respiratory hygiene you protect the people around you from viruses such as cold, flu and COVID-19.
Stay home if you feel unwell. If you have a fever, cough and difficulty breathing, seek medical attention and call in advance. Follow the directions of your local health authority.
Why? National and local authorities will have the most up to date information on the situation in your area. Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also protect you and help prevent spread of viruses and other infections.
Stay informed on the latest developments about COVID-19. Follow advice given by your healthcare provider, your national and local public health authority or your employer on how to protect yourself and others from COVID-19.
Why? National and local authorities will have the most up to date information on whether COVID-19 is spreading in your area. They are best placed to advise on what people in your area should be doing to protect themselves.
Protection measures for persons who are in or have recently visited (past 14 days) areas where COVID-19 is spreading
Follow the guidance outlined above. (Protection measures for everyone)
Stay at home if you begin to feel unwell, even with mild symptoms such as headache and slight runny nose, until you recover.
Why? Avoiding contact with others and visits to medical facilities will allow these facilities to operate more effectively and help protect you and others from possible COVID-19 and other viruses.

If you develop fever, cough and difficulty breathing, seek medical advice promptly as this may be due to a respiratory infection or other serious condition. Call in advance and tell your provider of any recent travel or contact with travelers.
Why? Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also help to prevent possible spread of COVID-19 and other viruses.
"""


enum Details {
    case WhatIsCoronovirus
    case WhatIs
}
