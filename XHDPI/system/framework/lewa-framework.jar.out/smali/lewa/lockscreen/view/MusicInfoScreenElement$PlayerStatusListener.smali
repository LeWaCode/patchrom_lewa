.class Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;
.super Landroid/content/BroadcastReceiver;
.source "MusicInfoScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/MusicInfoScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/lockscreen/view/MusicInfoScreenElement;


# direct methods
.method private constructor <init>(Llewa/lockscreen/view/MusicInfoScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicInfoScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/lockscreen/view/MusicInfoScreenElement;Llewa/lockscreen/view/MusicInfoScreenElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;-><init>(Llewa/lockscreen/view/MusicInfoScreenElement;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x2710

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Llewa/lockscreen/view/MusicInfoScreenElement;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "MusicInfoScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerStatusListener intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    const-string v1, "com.lewa.player.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.lewa.player.lockscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    :cond_1
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicInfoScreenElement;

    #getter for: Llewa/lockscreen/view/MusicInfoScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Llewa/lockscreen/view/MusicInfoScreenElement;->access$400(Llewa/lockscreen/view/MusicInfoScreenElement;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicInfoScreenElement;

    #getter for: Llewa/lockscreen/view/MusicInfoScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Llewa/lockscreen/view/MusicInfoScreenElement;->access$400(Llewa/lockscreen/view/MusicInfoScreenElement;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    :cond_2
    :goto_0
    return-void

    .line 314
    :cond_3
    const-string v1, "com.lewa.player.UpdateAtristBG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicInfoScreenElement;

    #getter for: Llewa/lockscreen/view/MusicInfoScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Llewa/lockscreen/view/MusicInfoScreenElement;->access$400(Llewa/lockscreen/view/MusicInfoScreenElement;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicInfoScreenElement;

    #getter for: Llewa/lockscreen/view/MusicInfoScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Llewa/lockscreen/view/MusicInfoScreenElement;->access$400(Llewa/lockscreen/view/MusicInfoScreenElement;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 316
    :cond_4
    const-string v1, "com.lewa.player.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicInfoScreenElement;

    #getter for: Llewa/lockscreen/view/MusicInfoScreenElement;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Llewa/lockscreen/view/MusicInfoScreenElement;->access$500(Llewa/lockscreen/view/MusicInfoScreenElement;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicInfoScreenElement;

    #getter for: Llewa/lockscreen/view/MusicInfoScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Llewa/lockscreen/view/MusicInfoScreenElement;->access$400(Llewa/lockscreen/view/MusicInfoScreenElement;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicInfoScreenElement;

    #getter for: Llewa/lockscreen/view/MusicInfoScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Llewa/lockscreen/view/MusicInfoScreenElement;->access$400(Llewa/lockscreen/view/MusicInfoScreenElement;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
