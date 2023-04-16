//
//  HomeYoutubeViewController.swift
//  AppYoutube
//
//  Created by VanHuy on 2023-04-16.
//

import UIKit

class HomeYoutubeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tblHomeYoutube: UITableView!
    let danhSachVideo = ["anh1", "anh2", "anh3"]
    let danhSachAvtKenh = ["anh6", "anh5", "anh3"]
    let danhSachNoiDung = ["Những bản nhạc chill hay nhất hiện nay", "Lạ lắm à nha tập 6: Myra Trần", "Tuyển tập những bài hết vu vẻ yêu đời"]
    let danhSachKenh = ["Music Z", "Đông Tây Promotion", "2004 Chill"]
    let luotXem = ["1.4Tr Lượt xem", "100N Lượt xem", "122N Lượt xem"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblHomeYoutube.dataSource = self
        tblHomeYoutube.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return danhSachVideo.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblHomeYoutube.dequeueReusableCell(withIdentifier: "HomeYoutubeCellIdentifier")!
        let imgVideo = cell.viewWithTag(100) as! UIImageView
        imgVideo.image = UIImage(named: danhSachVideo[indexPath.row])
        let imgdanhSachAvtKenh = cell.viewWithTag(101) as! UIImageView
        imgdanhSachAvtKenh.image = UIImage(named: danhSachAvtKenh[indexPath.row])
        imgdanhSachAvtKenh.layer.cornerRadius = 25
        let tblNoidung = cell.viewWithTag(102) as! UILabel
        tblNoidung.text = danhSachNoiDung[indexPath.row]
        let tbltenKenh = cell.viewWithTag(103) as! UILabel
        tbltenKenh.text = danhSachKenh[indexPath.row]
        let tblLuotXem = cell.viewWithTag(104) as! UILabel
        tblLuotXem.text = luotXem[indexPath.row]
        
        
        
        return cell
        
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
       
    }
}
