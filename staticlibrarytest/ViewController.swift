//
//  ViewController.swift
//  staticlibrarytest
//
//  Created by Ajaynath MS on 19/02/17.
//  Copyright © 2017 paysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timelabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        hb_xinit();
        hb_vmInit( 0 );
        
        var symMain = hb_dynsymSymbol( hb_dynsymFindName( "TIME" ) );
        
        //print("%s", "\n\n" );
        
        if((symMain) != nil){
            hb_vmPushSymbol( symMain );
            hb_vmPushNil();
            hb_vmDo( 0 );
            let  res = String(cString:hb_parc(-1));
            //print( "System time is:"+res);
            timelabel.text=res;
          
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

