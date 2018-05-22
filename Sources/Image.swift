//
//  Copyright © 2016 Tomas Linhart. All rights reserved.
//

import CGtk

public class Image: Widget {
    
    private let filename : String
    
    public init(filename: String) {
        self.filename = filename
        super.init()

        let pixelBuf = gdk_pixbuf_new_from_file(filename, nil)
        widgetPointer = gtk_image_new_from_pixbuf(pixelBuf)
    }
    
    private init(pixelBuf:OpaquePointer!,fileName:String) {
        self.filename = fileName
        super.init()
        
        widgetPointer = gtk_image_new_from_pixbuf(pixelBuf)
    }
    
    public func resize(_ size:Size) -> Image{
        
        let pixelBuf = gdk_pixbuf_new_from_file(filename, nil)
        let resized = gdk_pixbuf_scale_simple(pixelBuf, Int32(size.width), Int32(size.height), GDK_INTERP_BILINEAR)
        return Image.init(pixelBuf: resized, fileName: self.filename)
    }
    
}
