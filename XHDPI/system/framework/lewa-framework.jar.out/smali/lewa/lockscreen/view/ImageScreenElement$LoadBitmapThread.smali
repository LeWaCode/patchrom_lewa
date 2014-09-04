.class Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;
.super Ljava/lang/Thread;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/ImageScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapThread"
.end annotation


# instance fields
.field bitmapName:Ljava/lang/String;

.field final synthetic this$0:Llewa/lockscreen/view/ImageScreenElement;


# direct methods
.method constructor <init>(Llewa/lockscreen/view/ImageScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "bitmapName"

    .prologue
    .line 180
    iput-object p1, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->this$0:Llewa/lockscreen/view/ImageScreenElement;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 181
    iput-object p2, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->bitmapName:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, tempBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->this$0:Llewa/lockscreen/view/ImageScreenElement;

    iget-object v3, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->this$0:Llewa/lockscreen/view/ImageScreenElement;

    #getter for: Llewa/lockscreen/view/ImageScreenElement;->resourceManager:Llewa/lockscreen/view/ResourceManager;
    invoke-static {v3}, Llewa/lockscreen/view/ImageScreenElement;->access$100(Llewa/lockscreen/view/ImageScreenElement;)Llewa/lockscreen/view/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->bitmapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Llewa/lockscreen/view/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Llewa/lockscreen/view/ImageScreenElement;->access$002(Llewa/lockscreen/view/ImageScreenElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 188
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->this$0:Llewa/lockscreen/view/ImageScreenElement;

    iget-object v3, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->bitmapName:Ljava/lang/String;

    #setter for: Llewa/lockscreen/view/ImageScreenElement;->mBitmapName:Ljava/lang/String;
    invoke-static {v2, v3}, Llewa/lockscreen/view/ImageScreenElement;->access$202(Llewa/lockscreen/view/ImageScreenElement;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->this$0:Llewa/lockscreen/view/ImageScreenElement;

    #getter for: Llewa/lockscreen/view/ImageScreenElement;->imageCache:Ljava/util/Map;
    invoke-static {v2}, Llewa/lockscreen/view/ImageScreenElement;->access$300(Llewa/lockscreen/view/ImageScreenElement;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->bitmapName:Ljava/lang/String;

    iget-object v4, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->this$0:Llewa/lockscreen/view/ImageScreenElement;

    #getter for: Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Llewa/lockscreen/view/ImageScreenElement;->access$000(Llewa/lockscreen/view/ImageScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->this$0:Llewa/lockscreen/view/ImageScreenElement;

    iget-object v2, v2, Llewa/lockscreen/view/ImageScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->this$0:Llewa/lockscreen/view/ImageScreenElement;

    iget-object v2, v2, Llewa/lockscreen/view/ImageScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    const/4 v3, 0x1

    iput-boolean v3, v2, Llewa/lockscreen/view/ScreenContext;->mShouldUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ImageScreenElement"

    const-string v3, "the element has been recyled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
