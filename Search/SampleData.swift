/*
 * Copyright (C) 2015 - 2017, Daniel Dahan and CosmicMind, Inc. <http://cosmicmind.com>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *	*	Redistributions of source code must retain the above copyright notice, this
 *		list of conditions and the following disclaimer.
 *
 *	*	Redistributions in binary form must reproduce the above copyright notice,
 *		this list of conditions and the following disclaimer in the documentation
 *		and/or other materials provided with the distribution.
 *
 *	*	Neither the name of CosmicMind nor the names of its
 *		contributors may be used to endorse or promote products derived from
 *		this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import UIKit
import Material
import Graph

extension UIImage {
    public class func load(contentsOfFile name: String, ofType type: String) -> UIImage? {
        return UIImage(contentsOfFile: Bundle.main.path(forResource: name, ofType: type)!)
    }
}

struct SampleData {
    public static func createSampleData() {
        let graph = Graph()
        
        let facebook: Entity = Entity(type: "Company")
        facebook["name"] = "Facebook"
        
        let u1 = Entity(type: "User")
        u1["name"] = "Daniel Dahan"
        u1["name1"] = "Kendall Johnson"
        u1["name2"] = "Kendall Johnson"
        u1["name3"] = "Kendall Johnson"
        u1["name4"] = "Kendall Johnson"
        u1["name5"] = "Kendall Johnson"
        u1["name6"] = "Kendall Johnson"
        u1["name7"] = "Kendall Johnson"
        u1["name8"] = "Kendall Johnson"
        u1["name9"] = "Kendall Johnson"
        u1["name32"] = "Kendall Johnson"
        u1["nameew"] = "Kendall Johnson"
        u1["nameew"] = "Kendall Johnson"
        u1["nafsfme"] = "Kendall Johnson"
        u1["namewe"] = "Kendall Johnson"
        u1["nacsme"] = "Kendall Johnson"
        u1["nazme"] = "Kendall Johnson"
        u1["namfae"] = "Kendall Johnson"
        u1["nameg"] = "Kendall Johnson"
        u1["status"] = "Making the world a better place, one line of code at a time."
        u1["photo"] = UIImage.load(contentsOfFile: "daniel", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
        
        let employee1: Relationship = Relationship(type: "Employee")
        employee1["startDate"] = "February 4, 2004"
        employee1["startDate1"] = "February 6, 2004"
        employee1["startDate2"] = "February 6, 2004"
        employee1["startDate3"] = "February 6, 2004"
        employee1["startDate4"] = "February 6, 2004"
        employee1["startDate5"] = "February 6, 2004"
        employee1["startDate6"] = "February 6, 2004"
        employee1["startDate7"] = "February 6, 2004"
        employee1["startDate8"] = "February 6, 2004"
        employee1["startDate9"] = "February 6, 2004"
        employee1["startDate10"] = "February 6, 2004"
        employee1["startDate11"] = "February 6, 2004"
        employee1["startDate12"] = "February 6, 2004"
        employee1["startDate13"] = "February 6, 2004"
        employee1["startDate14"] = "February 6, 2004"
        employee1["startDate15"] = "February 6, 2004"
        employee1["startDate16"] = "February 6, 2004"
        employee1["startDate17"] = "February 6, 2004"
        employee1["startDate18"] = "February 6, 2004"
        employee1["startDate19"] = "February 6, 2004"
        employee1["startDate20"] = "February 6, 2004"
        
        employee1.subject = facebook
        employee1.object = u1
        
        let tasks1: Relationship = Relationship(type: "Tasks")
        tasks1["task"] = "TODO"
        tasks1["name"] = u1["name"]
        let task1: Entity = Entity(type: "Task")
        task1["description"] = "Laundry"
        tasks1.subject = u1
        tasks1.object = task1
        
        
        
        let u2 = Entity(type: "User")
        u2["name"] = "Deepali Parhar"
        u2["name1"] = "Kendall Johnson"
        u2["name2"] = "Kendall Johnson"
        u2["name3"] = "Kendall Johnson"
        u2["name4"] = "Kendall Johnson"
        u2["name5"] = "Kendall Johnson"
        u2["name6"] = "Kendall Johnson"
        u2["name7"] = "Kendall Johnson"
        u2["name8"] = "Kendall Johnson"
        u2["name9"] = "Kendall Johnson"
        u2["name32"] = "Kendall Johnson"
        u2["nameew"] = "Kendall Johnson"
        u2["nameew"] = "Kendall Johnson"
        u2["nafsfme"] = "Kendall Johnson"
        u2["namewe"] = "Kendall Johnson"
        u2["nacsme"] = "Kendall Johnson"
        u2["nazme"] = "Kendall Johnson"
        u2["namfae"] = "Kendall Johnson"
        u2["nameg"] = "Kendall Johnson"
        u2["status"] = "I haven’t come this far, only to come this far."
        u2["photo"] = UIImage.load(contentsOfFile: "deepali", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
        
        let employee2: Relationship = Relationship(type: "Employee")
        employee2["startDate"] = "February 5, 2004"
        employee2["startDate1"] = "February 6, 2004"
        employee2["startDate2"] = "February 6, 2004"
        employee2["startDate3"] = "February 6, 2004"
        employee2["startDate4"] = "February 6, 2004"
        employee2["startDate5"] = "February 6, 2004"
        employee2["startDate6"] = "February 6, 2004"
        employee2["startDate7"] = "February 6, 2004"
        employee2["startDate8"] = "February 6, 2004"
        employee2["startDate9"] = "February 6, 2004"
        employee2["startDate10"] = "February 6, 2004"
        employee2["startDate11"] = "February 6, 2004"
        employee2["startDate12"] = "February 6, 2004"
        employee2["startDate13"] = "February 6, 2004"
        employee2["startDate14"] = "February 6, 2004"
        employee2["startDate15"] = "February 6, 2004"
        employee2["startDate16"] = "February 6, 2004"
        employee2["startDate17"] = "February 6, 2004"
        employee2["startDate18"] = "February 6, 2004"
        employee2["startDate19"] = "February 6, 2004"
        employee2["startDate20"] = "February 6, 2004"
        
        employee2.subject = facebook
        employee2.object = u2
        
        let tasks2: Relationship = Relationship(type: "Tasks")
        tasks2["task"] = "TODO"
        tasks2["name"] = u2["name"]
        let task2: Entity = Entity(type: "Task")
        task2["description"] = "Laundry"
        tasks2.subject = u2
        tasks2.object = task2
        
        
        
        let u3 = Entity(type: "User")
        u3["name"] = "Eve"
        u3["name1"] = "Kendall Johnson"
        u3["name2"] = "Kendall Johnson"
        u3["name3"] = "Kendall Johnson"
        u3["name4"] = "Kendall Johnson"
        u3["name5"] = "Kendall Johnson"
        u3["name6"] = "Kendall Johnson"
        u3["name7"] = "Kendall Johnson"
        u3["name8"] = "Kendall Johnson"
        u3["name9"] = "Kendall Johnson"
        u3["name32"] = "Kendall Johnson"
        u3["nameew"] = "Kendall Johnson"
        u3["nameew"] = "Kendall Johnson"
        u3["nafsfme"] = "Kendall Johnson"
        u3["namewe"] = "Kendall Johnson"
        u3["nacsme"] = "Kendall Johnson"
        u3["nazme"] = "Kendall Johnson"
        u3["namfae"] = "Kendall Johnson"
        u3["nameg"] = "Kendall Johnson"
        u3["status"] = "Life is beautiful, so reflect it."
        u3["photo"] = UIImage.load(contentsOfFile: "eve", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
        
        let employee3: Relationship = Relationship(type: "Employee")
        employee3["startDate"] = "February 6, 2004"
        employee3["startDate1"] = "February 6, 2004"
        employee3["startDate2"] = "February 6, 2004"
        employee3["startDate3"] = "February 6, 2004"
        employee3["startDate4"] = "February 6, 2004"
        employee3["startDate5"] = "February 6, 2004"
        employee3["startDate6"] = "February 6, 2004"
        employee3["startDate7"] = "February 6, 2004"
        employee3["startDate8"] = "February 6, 2004"
        employee3["startDate9"] = "February 6, 2004"
        employee3["startDate10"] = "February 6, 2004"
        employee3["startDate11"] = "February 6, 2004"
        employee3["startDate12"] = "February 6, 2004"
        employee3["startDate13"] = "February 6, 2004"
        employee3["startDate14"] = "February 6, 2004"
        employee3["startDate15"] = "February 6, 2004"
        employee3["startDate16"] = "February 6, 2004"
        employee3["startDate17"] = "February 6, 2004"
        employee3["startDate18"] = "February 6, 2004"
        employee3["startDate19"] = "February 6, 2004"
        employee3["startDate20"] = "February 6, 2004"
        
        employee3.subject = facebook
        employee3.object = u3
        
        let tasks3: Relationship = Relationship(type: "Tasks")
        tasks3["task"] = "TODO"
        tasks3["name"] = u3["name"]
        let task3: Entity = Entity(type: "Task")
        task3["description"] = "Laundry"
        tasks3.subject = u3
        tasks3.object = task3
        
        
        
        
        
        let u4 = Entity(type: "User")
        u4["name"] = "Kendall Johnson"
        u4["name1"] = "Kendall Johnson"
        u4["name2"] = "Kendall Johnson"
        u4["name3"] = "Kendall Johnson"
        u4["name4"] = "Kendall Johnson"
        u4["name5"] = "Kendall Johnson"
        u4["name6"] = "Kendall Johnson"
        u4["name7"] = "Kendall Johnson"
        u4["name8"] = "Kendall Johnson"
        u4["name9"] = "Kendall Johnson"
        u4["name32"] = "Kendall Johnson"
        u4["nameew"] = "Kendall Johnson"
        u4["nameew"] = "Kendall Johnson"
        u4["nafsfme"] = "Kendall Johnson"
        u4["namewe"] = "Kendall Johnson"
        u4["nacsme"] = "Kendall Johnson"
        u4["nazme"] = "Kendall Johnson"
        u4["namfae"] = "Kendall Johnson"
        u4["nameg"] = "Kendall Johnson"
        u4["status"] = "It’s all about perspective"
        u4["photo"] = UIImage.load(contentsOfFile: "kendall", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
        
        let employee4: Relationship = Relationship(type: "Employee")
        employee4["startDate"] = "February 6, 2004"
        employee4["startDate1"] = "February 6, 2004"
        employee4["startDate2"] = "February 6, 2004"
        employee4["startDate3"] = "February 6, 2004"
        employee4["startDate4"] = "February 6, 2004"
        employee4["startDate5"] = "February 6, 2004"
        employee4["startDate6"] = "February 6, 2004"
        employee4["startDate7"] = "February 6, 2004"
        employee4["startDate8"] = "February 6, 2004"
        employee4["startDate9"] = "February 6, 2004"
        employee4["startDate10"] = "February 6, 2004"
        employee4["startDate11"] = "February 6, 2004"
        employee4["startDate12"] = "February 6, 2004"
        employee4["startDate13"] = "February 6, 2004"
        employee4["startDate14"] = "February 6, 2004"
        employee4["startDate15"] = "February 6, 2004"
        employee4["startDate16"] = "February 6, 2004"
        employee4["startDate17"] = "February 6, 2004"
        employee4["startDate18"] = "February 6, 2004"
        employee4["startDate19"] = "February 6, 2004"
        employee4["startDate20"] = "February 6, 2004"
        
        employee4.subject = facebook
        employee4.object = u4
        
        let tasks4: Relationship = Relationship(type: "Tasks")
        tasks4["task"] = "TODO"
        tasks4["name"] = u4["name"]
        let task4: Entity = Entity(type: "Task")
        task4["description"] = "Laundry"
        tasks4.subject = u4
        tasks4.object = task4
        
//        let u5 = Entity(type: "User")
//        u5["name"] = "Ashton McGregor"
//        u5["status"] = "So much to say, so few words."
//        u5["photo"] = UIImage.load(contentsOfFile: "ashton", ofType: "png")?.crop(toWidth: 60, toHeight: 60)
//        
//        let u7 = Entity(type: "User")
//        u7["name"] = "Laura Graham"
//        u7["status"] = "Eyes are the mirror to your soul."
//        u7["photo"] = UIImage.load(contentsOfFile: "laura", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
//        
//        let u8 = Entity(type: "User")
//        u8["name"] = "Karen Si"
//        u8["status"] = "Letting go to move forward."
//        u8["photo"] = UIImage.load(contentsOfFile: "karen", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
//        
//        let u9 = Entity(type: "User")
//        u9["name"] = "Jonathan Kuran"
//        u9["status"] = "Calculating the distance from here to there."
//        u9["photo"] = UIImage.load(contentsOfFile: "jonathan", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
//        
//        let u10 = Entity(type: "User")
//        u10["name"] = "Thomas Wallace"
//        u10["status"] = "I’m in it to win it. Long game."
//        u10["photo"] = UIImage.load(contentsOfFile: "thomas", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
//        
//        let u11 = Entity(type: "User")
//        u11["name"] = "Charles St. Louis"
//        u11["status"] = "Double Major in Mathematics and Philosophy. Modern Day Renaissance Man."
//        u11["photo"] = UIImage.load(contentsOfFile: "charles", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
//        
//        let u12 = Entity(type: "User")
//        u12["name"] = "Kelly Martin"
//        u12["status"] = "The world is mine."
//        u12["photo"] = UIImage.load(contentsOfFile: "kelly", ofType: "jpeg")?.crop(toWidth: 60, toHeight: 60)
        
        graph.sync()
    }
}
