.class Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/lockscreen/view/MusicControlScreenElement;


# direct methods
.method private constructor <init>(Llewa/lockscreen/view/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/lockscreen/view/MusicControlScreenElement;Llewa/lockscreen/view/MusicControlScreenElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 566
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;-><init>(Llewa/lockscreen/view/MusicControlScreenElement;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x2710

    .line 575
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Llewa/lockscreen/view/MusicControlScreenElement;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    const-string v1, "MusicControlScreenElement"

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

    .line 579
    :cond_0
    const-string v1, "com.lewa.player.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.lewa.player.lockscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 581
    :cond_1
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$600(Llewa/lockscreen/view/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Llewa/lockscreen/view/MusicControlScreenElement;->access$600(Llewa/lockscreen/view/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 591
    :cond_2
    :goto_0
    return-void

    .line 582
    :cond_3
    const-string v1, "com.lewa.player.UpdateAtristBG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 583
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$600(Llewa/lockscreen/view/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Llewa/lockscreen/view/MusicControlScreenElement;->access$600(Llewa/lockscreen/view/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 584
    :cond_4
    const-string v1, "com.lewa.player.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 585
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$700(Llewa/lockscreen/view/MusicControlScreenElement;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$600(Llewa/lockscreen/view/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Llewa/lockscreen/view/MusicControlScreenElement;->access$600(Llewa/lockscreen/view/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 588
    :cond_5
    const-string v1, "com.lewa.player.playStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    const-string v2, "isPlaying"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #calls: Llewa/lockscreen/view/MusicControlScreenElement;->updateMusicScreenStatus(Z)V
    invoke-static {v1, v2}, Llewa/lockscreen/view/MusicControlScreenElement;->access$800(Llewa/lockscreen/view/MusicControlScreenElement;Z)V

    goto :goto_0
.end method
