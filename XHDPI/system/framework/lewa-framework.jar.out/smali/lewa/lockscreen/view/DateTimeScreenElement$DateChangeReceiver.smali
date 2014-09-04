.class Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/DateTimeScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/lockscreen/view/DateTimeScreenElement;


# direct methods
.method private constructor <init>(Llewa/lockscreen/view/DateTimeScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;->this$0:Llewa/lockscreen/view/DateTimeScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/lockscreen/view/DateTimeScreenElement;Llewa/lockscreen/view/DateTimeScreenElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;-><init>(Llewa/lockscreen/view/DateTimeScreenElement;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;->this$0:Llewa/lockscreen/view/DateTimeScreenElement;

    iget-object v1, v1, Llewa/lockscreen/view/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 64
    :cond_0
    return-void
.end method
