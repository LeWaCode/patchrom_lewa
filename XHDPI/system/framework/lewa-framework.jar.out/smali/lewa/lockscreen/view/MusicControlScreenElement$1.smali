.class Llewa/lockscreen/view/MusicControlScreenElement$1;
.super Landroid/os/Handler;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/lockscreen/view/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/lockscreen/view/MusicControlScreenElement;


# direct methods
.method constructor <init>(Llewa/lockscreen/view/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Llewa/lockscreen/view/MusicControlScreenElement$1;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$1;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    #calls: Llewa/lockscreen/view/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Llewa/lockscreen/view/MusicControlScreenElement;->access$000(Llewa/lockscreen/view/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$1;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-string v2, "backg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Llewa/lockscreen/view/MusicControlScreenElement;->updateAlbumCover(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Llewa/lockscreen/view/MusicControlScreenElement;->access$100(Llewa/lockscreen/view/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
