.class public Llewa/laml/data/BatteryVariableUpdater;
.super Llewa/laml/data/NotifierVariableUpdater;
.source "BatteryVariableUpdater.java"


# static fields
.field public static final TAG_NAME_BATTERYFULL:Ljava/lang/String; = "BatteryFull"

.field public static final TAG_NAME_CHARGING:Ljava/lang/String; = "Charging"

.field public static final TAG_NAME_LOWBATTERY:Ljava/lang/String; = "BatteryLow"

.field public static final TAG_NAME_NORMAL:Ljava/lang/String; = "Normal"

.field public static final USE_TAG:Ljava/lang/String; = "Battery"


# instance fields
.field private mBatteryLevel:Llewa/laml/util/IndexedNumberVariable;

.field private mBatteryStatus:Llewa/laml/util/IndexedNumberVariable;

.field private mCategory:Ljava/lang/String;

.field private mContext:Llewa/laml/ScreenContext;


# direct methods
.method public constructor <init>(Llewa/laml/data/VariableUpdaterManager;Llewa/laml/ScreenContext;)V
    .locals 3
    .parameter "m"
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, p1, v0}, Llewa/laml/data/NotifierVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Llewa/laml/data/BatteryVariableUpdater;->mContext:Llewa/laml/ScreenContext;

    .line 35
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "battery_level"

    invoke-virtual {p0}, Llewa/laml/data/BatteryVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/BatteryVariableUpdater;->mBatteryLevel:Llewa/laml/util/IndexedNumberVariable;

    .line 37
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "battery_state"

    invoke-virtual {p0}, Llewa/laml/data/BatteryVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/BatteryVariableUpdater;->mBatteryStatus:Llewa/laml/util/IndexedNumberVariable;

    .line 39
    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 12
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    const-string v5, "level"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, level:I
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v2, v8

    .line 45
    .local v2, plugged:Z
    :goto_0
    if-eq v1, v10, :cond_0

    .line 46
    iget-object v9, p0, Llewa/laml/data/BatteryVariableUpdater;->mBatteryLevel:Llewa/laml/util/IndexedNumberVariable;

    const/16 v5, 0x64

    if-lt v1, v5, :cond_6

    const-wide/high16 v5, 0x4059

    :goto_1
    invoke-virtual {v9, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 48
    :cond_0
    const-string v5, "status"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 49
    .local v4, status:I
    if-eq v4, v10, :cond_4

    .line 51
    packed-switch v4, :pswitch_data_0

    .line 64
    :pswitch_0
    if-lez v1, :cond_7

    const/16 v5, 0xa

    if-ge v1, v5, :cond_7

    .line 65
    iget-object v5, p0, Llewa/laml/data/BatteryVariableUpdater;->mBatteryStatus:Llewa/laml/util/IndexedNumberVariable;

    const-wide/high16 v9, 0x4000

    invoke-virtual {v5, v9, v10}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 66
    const-string v0, "BatteryLow"

    .line 73
    .local v0, cate:Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Llewa/laml/data/BatteryVariableUpdater;->mCategory:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Llewa/laml/data/BatteryVariableUpdater;->mCategory:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 74
    :cond_1
    iput-object v0, p0, Llewa/laml/data/BatteryVariableUpdater;->mCategory:Ljava/lang/String;

    .line 75
    iget-object v5, p0, Llewa/laml/data/BatteryVariableUpdater;->mContext:Llewa/laml/ScreenContext;

    iget-object v3, v5, Llewa/laml/ScreenContext;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 76
    .local v3, root:Llewa/laml/ScreenElementRoot;
    if-eqz v3, :cond_3

    .line 78
    :try_start_0
    iget-object v5, p0, Llewa/laml/data/BatteryVariableUpdater;->mContext:Llewa/laml/ScreenContext;

    invoke-virtual {v5}, Llewa/laml/ScreenContext;->isGlobalThread()Z

    move-result v5

    if-nez v5, :cond_3

    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "onRefreshBatteryInfo"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v5, 0x3

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-nez v2, :cond_2

    const/16 v5, 0xa

    if-gt v1, v5, :cond_8

    :cond_2
    move v5, v8

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v9, v10

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v5

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_3
    :goto_4
    invoke-virtual {p0}, Llewa/laml/data/BatteryVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v5

    invoke-virtual {v5}, Llewa/laml/ScreenContext;->requestUpdate()V

    .line 91
    .end local v0           #cate:Ljava/lang/String;
    .end local v1           #level:I
    .end local v2           #plugged:Z
    .end local v3           #root:Llewa/laml/ScreenElementRoot;
    .end local v4           #status:I
    :cond_4
    return-void

    .restart local v1       #level:I
    :cond_5
    move v2, v7

    .line 44
    goto/16 :goto_0

    .line 46
    .restart local v2       #plugged:Z
    :cond_6
    int-to-double v5, v1

    goto/16 :goto_1

    .line 53
    .restart local v4       #status:I
    :pswitch_1
    iget-object v5, p0, Llewa/laml/data/BatteryVariableUpdater;->mBatteryStatus:Llewa/laml/util/IndexedNumberVariable;

    const-wide/high16 v9, 0x3ff0

    invoke-virtual {v5, v9, v10}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 54
    const-string v0, "Charging"

    .line 55
    .restart local v0       #cate:Ljava/lang/String;
    goto :goto_2

    .line 57
    .end local v0           #cate:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Llewa/laml/data/BatteryVariableUpdater;->mBatteryStatus:Llewa/laml/util/IndexedNumberVariable;

    const-wide/high16 v9, 0x4008

    invoke-virtual {v5, v9, v10}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 58
    const-string v0, "BatteryFull"

    .line 59
    .restart local v0       #cate:Ljava/lang/String;
    goto :goto_2

    .line 68
    .end local v0           #cate:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Llewa/laml/data/BatteryVariableUpdater;->mBatteryStatus:Llewa/laml/util/IndexedNumberVariable;

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v9, v10}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 69
    const-string v0, "Normal"

    .restart local v0       #cate:Ljava/lang/String;
    goto/16 :goto_2

    .restart local v3       #root:Llewa/laml/ScreenElementRoot;
    :cond_8
    move v5, v7

    .line 79
    goto :goto_3

    .line 84
    :catch_0
    move-exception v5

    goto :goto_4

    .line 51
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
