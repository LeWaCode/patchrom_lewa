.class Llewa/lockscreen/LockScreenRoot$InformationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/LockScreenRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InformationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/lockscreen/LockScreenRoot;


# direct methods
.method private constructor <init>(Llewa/lockscreen/LockScreenRoot;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Llewa/lockscreen/LockScreenRoot$InformationReceiver;->this$0:Llewa/lockscreen/LockScreenRoot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/lockscreen/LockScreenRoot;Llewa/lockscreen/LockScreenRoot$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Llewa/lockscreen/LockScreenRoot$InformationReceiver;-><init>(Llewa/lockscreen/LockScreenRoot;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :cond_0
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot$InformationReceiver;->this$0:Llewa/lockscreen/LockScreenRoot;

    #calls: Llewa/lockscreen/LockScreenRoot;->updateTime()V
    invoke-static {v1}, Llewa/lockscreen/LockScreenRoot;->access$100(Llewa/lockscreen/LockScreenRoot;)V

    .line 246
    :cond_1
    return-void
.end method
