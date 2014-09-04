.class Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicStateRunnable"
.end annotation


# instance fields
.field private btnName:Ljava/lang/String;

.field final synthetic this$0:Llewa/lockscreen/view/MusicControlScreenElement;


# direct methods
.method public constructor <init>(Llewa/lockscreen/view/MusicControlScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "btnName"

    .prologue
    .line 598
    iput-object p1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p2, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->btnName:Ljava/lang/String;

    .line 600
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 604
    const-string v1, "music_play"

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->btnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPlay:Llewa/lockscreen/view/ButtonScreenElement;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$900(Llewa/lockscreen/view/MusicControlScreenElement;)Llewa/lockscreen/view/ButtonScreenElement;

    move-result-object v1

    invoke-virtual {v1, v4}, Llewa/lockscreen/view/ButtonScreenElement;->show(Z)V

    .line 606
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPause:Llewa/lockscreen/view/ButtonScreenElement;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$1000(Llewa/lockscreen/view/MusicControlScreenElement;)Llewa/lockscreen/view/ButtonScreenElement;

    move-result-object v1

    invoke-virtual {v1, v3}, Llewa/lockscreen/view/ButtonScreenElement;->show(Z)V

    .line 607
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #setter for: Llewa/lockscreen/view/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v1, v3}, Llewa/lockscreen/view/MusicControlScreenElement;->access$1102(Llewa/lockscreen/view/MusicControlScreenElement;I)I

    .line 608
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    iget-object v1, v1, Llewa/lockscreen/view/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "music_state"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    :goto_0
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    iget-object v1, v1, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v0, v1, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    .line 619
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$1200(Llewa/lockscreen/view/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 620
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$1200(Llewa/lockscreen/view/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    return-void

    .line 610
    .end local v0           #view:Landroid/view/View;
    :cond_1
    const-string v1, "music_pause"

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->btnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPlay:Llewa/lockscreen/view/ButtonScreenElement;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$900(Llewa/lockscreen/view/MusicControlScreenElement;)Llewa/lockscreen/view/ButtonScreenElement;

    move-result-object v1

    invoke-virtual {v1, v3}, Llewa/lockscreen/view/ButtonScreenElement;->show(Z)V

    .line 612
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    #getter for: Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPause:Llewa/lockscreen/view/ButtonScreenElement;
    invoke-static {v1}, Llewa/lockscreen/view/MusicControlScreenElement;->access$1000(Llewa/lockscreen/view/MusicControlScreenElement;)Llewa/lockscreen/view/ButtonScreenElement;

    move-result-object v1

    invoke-virtual {v1, v4}, Llewa/lockscreen/view/ButtonScreenElement;->show(Z)V

    .line 613
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    const/4 v2, 0x2

    #setter for: Llewa/lockscreen/view/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v1, v2}, Llewa/lockscreen/view/MusicControlScreenElement;->access$1102(Llewa/lockscreen/view/MusicControlScreenElement;I)I

    .line 615
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;->this$0:Llewa/lockscreen/view/MusicControlScreenElement;

    iget-object v1, v1, Llewa/lockscreen/view/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "music_state"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
