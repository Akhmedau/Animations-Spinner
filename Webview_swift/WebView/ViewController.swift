import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://teamtreehouse.com/blog.com")
        let request = NSURLRequest(url: url as! URL)
        webView.loadRequest(request as URLRequest)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

