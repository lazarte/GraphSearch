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

class AppSearchBarController: SearchBarController {
    private var menuButton: IconButton!
    private var moreButton: IconButton!
    
    open override func prepare() {
        super.prepare()
        prepareMenuButton()
        prepareMoreButton()
        prepareStatusBar()
        prepareSearchBar()
    }
    
    private func prepareMenuButton() {
        menuButton = IconButton(image: Icon.cm.menu)
    }
    
    private func prepareMoreButton() {
        moreButton = IconButton(image: Icon.cm.moreVertical)
        moreButton.addTarget(self, action: #selector(AppSearchBarController.add), for: .touchUpInside)
    }
    
    private func prepareStatusBar() {
        statusBarStyle = .lightContent
        
        // Access the statusBar.
//        statusBar.backgroundColor = Color.grey.base
    }
    
    private func prepareSearchBar() {
        searchBar.leftViews = [menuButton]
        searchBar.rightViews = [moreButton]
    }
    
    func add() {
        let graph = Graph()
        let search = Search<Entity>(graph: graph).for(types: "Company")
        let companies = search.sync()
        if companies.count > 0 {
            let facebook: Entity = companies[0]
            
            let u4 = Entity(type: "User")
            u4["name"] = "Kendall Johnson"
            u4["status"] = "It’s all about perspective"
            u4["photo"] = UIImage.load(contentsOfFile: "kendall", ofType: "jpg")?.crop(toWidth: 60, toHeight: 60)
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
            let task4: Entity = Entity(type: "Task")
            task4["description"] = "Laundry"
            tasks4.subject = u4
            tasks4.object = task4
        }
        graph.sync()
    }
}

