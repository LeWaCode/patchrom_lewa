.class public Llewa/lockscreen/LockScreenRoot;
.super Llewa/lockscreen/view/ScreenElement;
.source "LockScreenRoot.java"

# interfaces
.implements Llewa/lockscreen/UnlockerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/LockScreenRoot$1;,
        Llewa/lockscreen/LockScreenRoot$UnlockerCallback;,
        Llewa/lockscreen/LockScreenRoot$InformationReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "LockScreenRoot"

.field private static final TAG_NAME_BATTERYFULL:Ljava/lang/String; = "BatteryFull"

.field private static final TAG_NAME_CHARGING:Ljava/lang/String; = "Charging"

.field private static final TAG_NAME_LOWBATTERY:Ljava/lang/String; = "BatteryLow"


# instance fields
.field private context:Landroid/content/Context;

.field private element:Lorg/w3c/dom/Element;

.field protected mCalendar:Ljava/util/Calendar;

.field private mDisplayDesktop:Z

.field private mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

.field private mFrameRate:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundManager:Llewa/lockscreen/SoundManager;

.field private mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

.field private screenContext:Llewa/lockscreen/view/ScreenContext;


# direct methods
.method public constructor <init>(Llewa/lockscreen/view/ScreenContext;Llewa/lockscreen/LockScreenRoot$UnlockerCallback;Llewa/lockscreen/LockScreenResourceLoader;)V
    .locals 2
    .parameter "screenContext"
    .parameter "unlockercallback"
    .parameter "loader"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v1, p1}, Llewa/lockscreen/view/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 53
    iput-object p1, p0, Llewa/lockscreen/LockScreenRoot;->screenContext:Llewa/lockscreen/view/ScreenContext;

    .line 54
    iget-object v0, p1, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    iput-object v0, p0, Llewa/lockscreen/LockScreenRoot;->context:Landroid/content/Context;

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    .line 57
    new-instance v0, Llewa/lockscreen/LockScreenRoot$InformationReceiver;

    invoke-direct {v0, p0, v1}, Llewa/lockscreen/LockScreenRoot$InformationReceiver;-><init>(Llewa/lockscreen/LockScreenRoot;Llewa/lockscreen/LockScreenRoot$1;)V

    iput-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    const/16 v0, 0x1e

    iput v0, p0, Llewa/lockscreen/LockScreenRoot;->mFrameRate:I

    .line 59
    iput-object p0, p1, Llewa/lockscreen/view/ScreenContext;->mRoot:Llewa/lockscreen/view/ScreenElement;

    .line 60
    iput-object p2, p0, Llewa/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

    .line 62
    invoke-direct {p0}, Llewa/lockscreen/LockScreenRoot;->initDisplay()V

    .line 64
    invoke-direct {p0}, Llewa/lockscreen/LockScreenRoot;->updateTime()V

    .line 66
    new-instance v0, Llewa/lockscreen/SoundManager;

    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Llewa/lockscreen/SoundManager;-><init>(Landroid/content/Context;Llewa/lockscreen/LockScreenResourceLoader;)V

    iput-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mSoundManager:Llewa/lockscreen/SoundManager;

    .line 67
    return-void
.end method

.method static synthetic access$100(Llewa/lockscreen/LockScreenRoot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Llewa/lockscreen/LockScreenRoot;->updateTime()V

    return-void
.end method

.method private initDisplay()V
    .locals 9

    .prologue
    .line 71
    iget-object v7, p0, Llewa/lockscreen/LockScreenRoot;->context:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 73
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 74
    .local v6, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 76
    .local v1, height:I
    const-wide/16 v4, 0x0

    .line 77
    .local v4, screen_width:D
    if-ge v6, v1, :cond_0

    .line 78
    int-to-double v4, v6

    .line 82
    :goto_0
    const-string v7, "screen_width"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-wide/16 v2, 0x0

    .line 85
    .local v2, screen_height:D
    if-le v1, v6, :cond_1

    .line 86
    int-to-double v2, v1

    .line 90
    :goto_1
    const-string v7, "screen_height"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 80
    .end local v2           #screen_height:D
    :cond_0
    int-to-double v4, v1

    goto :goto_0

    .line 88
    .restart local v2       #screen_height:D
    :cond_1
    int-to-double v2, v6

    goto :goto_1
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, next_alarm_time:Ljava/lang/String;
    const-string v1, "next_alarm_time"

    invoke-static {v1, v0}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private updateTime()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 97
    const-string v0, "ampm"

    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "hour12"

    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "hour24"

    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "minute"

    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "year"

    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "month"

    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "date"

    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "day_of_week"

    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 1
    .parameter "unlockerscreenelement"

    .prologue
    .line 276
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Llewa/lockscreen/LockScreenElementGroup;->endUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 279
    :cond_0
    return-void
.end method

.method public findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 109
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Llewa/lockscreen/LockScreenElementGroup;->findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-super {p0}, Llewa/lockscreen/view/ScreenElement;->finish()V

    .line 118
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mSoundManager:Llewa/lockscreen/SoundManager;

    invoke-virtual {v1}, Llewa/lockscreen/SoundManager;->release()V

    .line 119
    iput-object v3, p0, Llewa/lockscreen/LockScreenRoot;->mSoundManager:Llewa/lockscreen/SoundManager;

    .line 121
    iput-object v3, p0, Llewa/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

    .line 123
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v1}, Llewa/lockscreen/LockScreenElementGroup;->finish()V

    .line 125
    iput-object v3, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    .line 129
    :cond_0
    :try_start_0
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->context:Landroid/content/Context;

    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    iput-object v3, p0, Llewa/lockscreen/LockScreenRoot;->element:Lorg/w3c/dom/Element;

    .line 135
    iput-object v3, p0, Llewa/lockscreen/LockScreenRoot;->context:Landroid/content/Context;

    .line 136
    iput-object v3, p0, Llewa/lockscreen/LockScreenRoot;->screenContext:Llewa/lockscreen/view/ScreenContext;

    .line 138
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContext()Llewa/lockscreen/view/ScreenContext;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->screenContext:Llewa/lockscreen/view/ScreenContext;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Llewa/lockscreen/LockScreenRoot;->mFrameRate:I

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v1}, Llewa/lockscreen/LockScreenElementGroup;->init()V

    .line 152
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    const-string v2, "BatteryFull"

    invoke-virtual {v1, v2, v3}, Llewa/lockscreen/LockScreenElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 153
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    const-string v2, "Charging"

    invoke-virtual {v1, v2, v3}, Llewa/lockscreen/LockScreenElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 154
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    const-string v2, "BatteryLow"

    invoke-virtual {v1, v2, v3}, Llewa/lockscreen/LockScreenElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 156
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Llewa/lockscreen/LockScreenRoot;->context:Landroid/content/Context;

    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    invoke-direct {p0}, Llewa/lockscreen/LockScreenRoot;->refreshAlarm()V

    .line 163
    return-void
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Llewa/lockscreen/LockScreenRoot;->mDisplayDesktop:Z

    return v0
.end method

.method public load()Z
    .locals 5

    .prologue
    .line 176
    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v2, v2, Llewa/lockscreen/view/ScreenContext;->mResourceManager:Llewa/lockscreen/view/ResourceManager;

    invoke-virtual {v2}, Llewa/lockscreen/view/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v2

    iput-object v2, p0, Llewa/lockscreen/LockScreenRoot;->element:Lorg/w3c/dom/Element;

    .line 177
    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->element:Lorg/w3c/dom/Element;

    if-nez v2, :cond_0

    .line 178
    const/4 v2, 0x0

    .line 195
    :goto_0
    return v2

    .line 182
    :cond_0
    :try_start_0
    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->element:Lorg/w3c/dom/Element;

    const-string v3, "frameRate"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Llewa/lockscreen/LockScreenRoot;->mFrameRate:I

    .line 183
    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->element:Lorg/w3c/dom/Element;

    const-string v3, "displayDesktop"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Llewa/lockscreen/LockScreenRoot;->mDisplayDesktop:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_1
    :try_start_1
    new-instance v2, Llewa/lockscreen/LockScreenElementGroup;

    iget-object v3, p0, Llewa/lockscreen/LockScreenRoot;->element:Lorg/w3c/dom/Element;

    iget-object v4, p0, Llewa/lockscreen/LockScreenRoot;->screenContext:Llewa/lockscreen/view/ScreenContext;

    invoke-direct {v2, v3, v4}, Llewa/lockscreen/LockScreenElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    iput-object v2, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;
    :try_end_1
    .catch Llewa/lockscreen/view/DomParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, numberformatexception:Ljava/lang/NumberFormatException;
    const/16 v2, 0x1e

    iput v2, p0, Llewa/lockscreen/LockScreenRoot;->mFrameRate:I

    goto :goto_1

    .line 191
    .end local v1           #numberformatexception:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 193
    .local v0, e:Llewa/lockscreen/view/DomParseException;
    invoke-virtual {v0}, Llewa/lockscreen/view/DomParseException;->printStackTrace()V

    goto :goto_2
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "motionevent"

    .prologue
    .line 200
    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Llewa/lockscreen/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;)V

    .line 212
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 205
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 208
    .local v1, y:I
    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->mName:Ljava/lang/String;

    const-string v3, "touch_x"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->mName:Ljava/lang/String;

    const-string v3, "touch_y"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v2, p1}, Llewa/lockscreen/LockScreenElementGroup;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/LockScreenElementGroup;->pause()V

    .line 219
    :cond_0
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 2
    .parameter "sound"

    .prologue
    .line 222
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mSoundManager:Llewa/lockscreen/SoundManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Llewa/lockscreen/SoundManager;->playSound(Ljava/lang/String;Z)V

    .line 223
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 259
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Llewa/lockscreen/LockScreenElementGroup;->render(Landroid/graphics/Canvas;)V

    .line 262
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/LockScreenElementGroup;->resume()V

    .line 232
    :cond_0
    invoke-direct {p0}, Llewa/lockscreen/LockScreenRoot;->refreshAlarm()V

    .line 233
    return-void
.end method

.method public startUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 1
    .parameter "unlockerscreenelement"

    .prologue
    .line 283
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Llewa/lockscreen/LockScreenElementGroup;->startUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 286
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 267
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 269
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Llewa/lockscreen/LockScreenRoot;->mElementGroup:Llewa/lockscreen/LockScreenElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/lockscreen/LockScreenElementGroup;->tick(J)V

    .line 272
    :cond_0
    return-void
.end method
