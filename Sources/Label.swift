//
//  Copyright © 2015 Tomas Linhart. All rights reserved.
//

import CGtk

public class Label: Widget {
    public init(text: String? = nil) {
        super.init()
        if let text = text {
            widgetPointer = gtk_label_new(text)
        } else {
            widgetPointer = gtk_label_new(nil)
        }
    }

    public var text: String? {
        get {
            return String(cString: gtk_label_get_text(castedPointer()))
        }
        set {
            if let text = newValue {
                gtk_label_set_text(castedPointer(), text)
            } else {
                gtk_label_set_text(castedPointer(), nil)
            }
        }
    }

    public var selectable: Bool {
        get {
            return gtk_label_get_selectable(castedPointer()) == 1
        }
        set {
            gtk_label_set_selectable(castedPointer(), newValue ? 1 : 0)
        }
    }
    
    public func setFont(withName name :String){
    
        let fontDesc = pango_font_description_from_string(name)
        gtk_widget_modify_font(widgetPointer, fontDesc)
    }
    
    public func setTextAlignment(x:Float? = nil ,y:Float? = nil){
        
        if let x = x{
             gtk_label_set_xalign(castedPointer(), x)
        }
        if let y = y{
            gtk_label_set_yalign(castedPointer(), y)
        }
        
    }
    
    public var textColor : Color{
        set{
            tintColor = newValue
        }get{
            return tintColor
        }
    }
    
}
