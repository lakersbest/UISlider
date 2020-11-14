import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbOpacity: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    /* 如果觸發Value Changed事件是Slider，可以直接將參數sender類型設定成UISlider */
    @IBAction func opacityValueChanged(_ slider: UISlider) {
        /* alpha值(透明度)介於0.0~1.0之間 */
        imageView.alpha = CGFloat(slider.value)
        /* 取得Slider值後顯示在lbOpacity上 */
        lbOpacity.text = String(format: "%.2f", slider.value)
    }
}

