.class Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimepanelScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/TimepanelScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/lockscreen/view/TimepanelScreenElement;


# direct methods
.method private constructor <init>(Llewa/lockscreen/view/TimepanelScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;->this$0:Llewa/lockscreen/view/TimepanelScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/lockscreen/view/TimepanelScreenElement;Llewa/lockscreen/view/TimepanelScreenElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;-><init>(Llewa/lockscreen/view/TimepanelScreenElement;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 196
    const-string v1, "TimepanelScreenElement"

    const-string v2, "error: context==null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, p0, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;->this$0:Llewa/lockscreen/view/TimepanelScreenElement;

    #getter for: Llewa/lockscreen/view/TimepanelScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Llewa/lockscreen/view/TimepanelScreenElement;->access$300(Llewa/lockscreen/view/TimepanelScreenElement;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver$1UpdateTimeThread;

    invoke-direct {v2, p0}, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver$1UpdateTimeThread;-><init>(Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 217
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;->this$0:Llewa/lockscreen/view/TimepanelScreenElement;

    const/4 v2, 0x1

    #setter for: Llewa/lockscreen/view/TimepanelScreenElement;->mForceDraw:Z
    invoke-static {v1, v2}, Llewa/lockscreen/view/TimepanelScreenElement;->access$202(Llewa/lockscreen/view/TimepanelScreenElement;Z)Z

    goto :goto_0
.end method
