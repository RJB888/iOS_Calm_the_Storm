//
//  DisasterInfoData.swift
//  calmTheStorm
//
//  Created by Student Account on 5/17/21.
//

import SwiftUI

struct DisasterInfoItem: Identifiable {
    var id = UUID()
    var info: String
}

struct infoRow: View{
    let whichInfo: DisasterInfoItem
    
    var body: some View{
        HStack{
            Text(" \(whichInfo.info)")
                .font(.custom("Avenir", size: 18))
        }
    }
}

let TornadoData = [
    DisasterInfoItem(info:"• If you can safely get to a sturdy building, then do so immediately."),
    DisasterInfoItem(info:"• Go to a safe room, basement, or storm cellar."),
    DisasterInfoItem(info: "• If you are in a building with no basement, then get to a small interior room on the lowest level."),
    DisasterInfoItem(info:"• Stay away from windows, doors, and outside walls."),
    DisasterInfoItem(info:"• Do not get under an overpass or bridge. You’re safer in a low, flat location."),
    DisasterInfoItem(info:"• Watch out for flying debris that can cause injury or death."),
    DisasterInfoItem(info:"• Use your arms to protect your head and neck."),
    DisasterInfoItem(info:"• If you cannot stay at home after a tornado, make plans to shelter with friends and family."),
    DisasterInfoItem(info:"• Listen to EAS, NOAA Weather Radio, or local alerting systems for current emergency information and instructions."),
    DisasterInfoItem(info:"• Do not try to outrun a tornado in a vehicle.")
]

let WildfireData = [
    DisasterInfoItem(info:"• Evacuate immediately if authorities tell you to do so!"),
    DisasterInfoItem(info:"• If trapped, then call 911 and give your location, but be aware that emergency response could be delayed or impossible. Turn on lights to help rescuers find you."),
    DisasterInfoItem(info:"• Pay attention to emergency alerts and notifications for information and instructions."),
    DisasterInfoItem(info:"• Use an N95 mask to protect yourself from smoke inhalation."),
    DisasterInfoItem(info:"• If you are not ordered to evacuate but smoky conditions exist, stay inside in a safe location or go to a community building where smoke levels are lower."),
    DisasterInfoItem(info:"• If you do not already have N95 respirators, you can reduce your exposure to smoke by doing the following:"),
    DisasterInfoItem(info:"• Choose a room to close off from outside air and set up a portable air cleaner or filter to keep the air in this room clean even when it’s smoky in the rest of the building and outdoors."),
    DisasterInfoItem(info:"• Use high efficiency filters in your central air conditioning system to capture fine particles from smoke. If your system has fresh air intake, set the system to “recirculate” mode and close the outdoor intake damper."),
    DisasterInfoItem(info:"• Avoid using anything that burns, such as candles and fireplaces. Do not vacuum, as vacuuming stirs up particles already inside your home. Do not smoke tobacco or other products. Smoking puts even more pollution into the air."),
    DisasterInfoItem(info:"• Pay attention to any health symptoms if you have asthma, COPD, heart disease, or are pregnant. If you are sick and need medical attention, contact your healthcare provider for further care instructions and shelter in place, if possible. If you are experiencing a medical emergency, call 9-1-1 and let the operator know if you have, or think you might have, COVID-19. If possible, put on a cloth fae covering before help arrives. If staying at a shelter or public facility, alert shelter staff immediately so they can call a local hospital or clinic.")
]

let EarthquakeData = [
    DisasterInfoItem(info:"• If you are in a car, pull over and stop. Set your parking brake."),
    DisasterInfoItem(info:"• If you are in bed, turn face down and cover your head and neck with a pillow."),
    DisasterInfoItem(info:"• If you are outdoors, stay outdoors away from buildings."),
    DisasterInfoItem(info:"• If you are inside, stay and do not run outside and avoid doorways."),
    DisasterInfoItem(info:"• Drop: Wherever you are, drop down to your hands and knees and hold onto something sturdy. If you’re using a wheelchair or walker with a seat, make sure your wheels are locked and remain seated until the shaking stops."),
    DisasterInfoItem(info:"• Cover: Cover your head and neck with your arms. If a sturdy table or desk is nearby, crawl underneath it for shelter. If no shelter is nearby, crawl next to an interior wall (away from windows). Crawl only if you can reach better cover without going through an area with more debris. Stay on your knees or bent over to protect vital organs."),
    DisasterInfoItem(info:"• Hold On: If you are under a table or desk, hold on with one hand and be ready to move with it if it moves. If seated and unable to drop to the floor, bend forward, cover your head with your arms and hold on to your neck with both hands.")
]

let VolcanoData = [
    DisasterInfoItem(info:"• Listen to alerts. The Volcano Notification Service provides up-to-date information about eruptions."),
    DisasterInfoItem(info:"• Follow evacuation orders from local authorities. Evacuate early."),
    DisasterInfoItem(info:"• Avoid areas downwind, and river valleys downstream, of the volcano. Rubble and ash will be carried by wind and gravity."),
    DisasterInfoItem(info:"• Take temporary shelter from volcanic ash where you are if you have enough supplies. Cover ventilation openings and seal doors and windows."),
    DisasterInfoItem(info:"• if outside, protect yourself from falling ash that can irritate skin and injure breathing passages, eyes, and open wounds. Use a well-fitting, certified face mask such as an N95. The Centers for Disease Control and Prevention (CDC) has a list of certified masks and the maker’s instructions on how to use the masks. Use a cloth mask to protect yourself for shorter periods of time."),
    DisasterInfoItem(info:"• Avoid driving in heavy ash fall.")
]



