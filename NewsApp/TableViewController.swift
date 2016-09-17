//
//  TableViewController.swift
//  NewsApp
//
//  Created by Yuuki Urakawa on 2016/08/28.
//  Copyright © 2016年 Yuuki Urakawa. All rights reserved.
//

import UIKit
import Alamofire

class TableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Alamofire.request(.GET, fetchFrom).responseObject("responseData") { (response: Alamofire.Response<FeedResponse, NSError>) in
            guard let entries = response.result.value?.feed?.entries else {
                return
            }
            
            print(entries)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
