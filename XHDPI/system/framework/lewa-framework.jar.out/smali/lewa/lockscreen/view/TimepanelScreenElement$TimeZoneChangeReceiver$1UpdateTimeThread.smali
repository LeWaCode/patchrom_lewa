.class Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver$1UpdateTimeThread;
.super Ljava/lang/Object;
.source "TimepanelScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateTimeThread"
.end annotation


# instance fields
.field final synthetic this$1:Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;


# direct methods
.method constructor <init>(Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver$1UpdateTimeThread;->this$1:Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver$1UpdateTimeThread;->this$1:Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;

    iget-object v1, v1, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;->this$0:Llewa/lockscreen/view/TimepanelScreenElement;

    #calls: Llewa/lockscreen/view/TimepanelScreenElement;->updateTime()V
    invoke-static {v1}, Llewa/lockscreen/view/TimepanelScreenElement;->access$100(Llewa/lockscreen/view/TimepanelScreenElement;)V

    .line 208
    iget-object v1, p0, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver$1UpdateTimeThread;->this$1:Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;

    iget-object v1, v1, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;->this$0:Llewa/lockscreen/view/TimepanelScreenElement;

    const/4 v2, 0x0

    #setter for: Llewa/lockscreen/view/TimepanelScreenElement;->mForceDraw:Z
    invoke-static {v1, v2}, Llewa/lockscreen/view/TimepanelScreenElement;->access$202(Llewa/lockscreen/view/TimepanelScreenElement;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const-string v1, "TimepanelScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to updateTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
