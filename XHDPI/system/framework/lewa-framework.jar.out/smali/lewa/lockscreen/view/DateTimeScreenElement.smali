.class public Llewa/lockscreen/view/DateTimeScreenElement;
.super Llewa/lockscreen/view/TextScreenElement;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/DateTimeScreenElement$1;,
        Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "DateTime"


# instance fields
.field protected mCalendar:Ljava/util/Calendar;

.field private final mDateChangeReceiver:Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 2
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 24
    new-instance v0, Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;-><init>(Llewa/lockscreen/view/DateTimeScreenElement;Llewa/lockscreen/view/DateTimeScreenElement$1;)V

    iput-object v0, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mDateChangeReceiver:Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;

    .line 25
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Llewa/lockscreen/view/DateTimeScreenElement;->context:Landroid/content/Context;

    iget-object v2, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mDateChangeReceiver:Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    invoke-super {p0}, Llewa/lockscreen/view/TextScreenElement;->finish()V

    .line 47
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 28
    iget-object v2, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mFormat:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p0, Llewa/lockscreen/view/DateTimeScreenElement;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 36
    :goto_0
    return-object v2

    .line 31
    :cond_0
    iget-object v1, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mFormat:Ljava/lang/String;

    .line 32
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mFormat:Ljava/lang/String;

    const-string v3, "NNNN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    new-instance v0, Llewa/lockscreen/view/util/ChineseDateUtil;

    iget-object v2, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    iget-object v3, p0, Llewa/lockscreen/view/DateTimeScreenElement;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Llewa/lockscreen/view/util/ChineseDateUtil;-><init>(Ljava/util/Calendar;Landroid/content/Context;)V

    .line 34
    .local v0, cd:Llewa/lockscreen/view/util/ChineseDateUtil;
    iget-object v2, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mFormat:Ljava/lang/String;

    const-string v3, "NNNN"

    invoke-virtual {v0}, Llewa/lockscreen/view/util/ChineseDateUtil;->getChineseDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .end local v0           #cd:Llewa/lockscreen/view/util/ChineseDateUtil;
    :cond_1
    iget-object v2, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Llewa/lockscreen/view/TextScreenElement;->init()V

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Llewa/lockscreen/view/DateTimeScreenElement;->context:Landroid/content/Context;

    iget-object v2, p0, Llewa/lockscreen/view/DateTimeScreenElement;->mDateChangeReceiver:Llewa/lockscreen/view/DateTimeScreenElement$DateChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void
.end method
