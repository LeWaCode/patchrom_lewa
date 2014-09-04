.class final Llewa/laml/ActionCommand$WifiStateTracker;
.super Llewa/laml/ActionCommand$StateTracker;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# static fields
.field private static final MAX_SCAN_ATTEMPT:I = 0x3


# instance fields
.field public zConnected:Z

.field private zScanAttempt:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1030
    invoke-direct {p0}, Llewa/laml/ActionCommand$StateTracker;-><init>()V

    .line 1034
    iput-boolean v0, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 1036
    iput v0, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    return-void
.end method

.method synthetic constructor <init>(Llewa/laml/ActionCommand$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1030
    invoke-direct {p0}, Llewa/laml/ActionCommand$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 1039
    packed-switch p0, :pswitch_data_0

    .line 1049
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 1041
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 1043
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1045
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1047
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 1053
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1054
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Llewa/laml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 1057
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 1061
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1062
    const-string v3, "wifi_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1063
    .local v2, wifiState:I
    invoke-static {v2}, Llewa/laml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Llewa/laml/ActionCommand$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 1064
    if-ne v5, v2, :cond_0

    .line 1065
    iput-boolean v7, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 1066
    iput v6, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 1088
    .end local v2           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1070
    iget v3, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ge v3, v5, :cond_0

    .line 1071
    iget v3, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ne v3, v5, :cond_0

    .line 1072
    iput-boolean v6, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_0

    .line 1075
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1076
    iput v5, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 1077
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1079
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 1080
    .local v1, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v1, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v1, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v1, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v1, :cond_3

    .line 1084
    iput-boolean v6, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_0

    .line 1085
    :cond_3
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v1, :cond_0

    .line 1086
    iput-boolean v7, p0, Llewa/laml/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 1091
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1093
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 1094
    const-string v1, "ActionCommand"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :goto_0
    return-void

    .line 1097
    :cond_0
    new-instance v1, Llewa/laml/ActionCommand$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Llewa/laml/ActionCommand$WifiStateTracker$1;-><init>(Llewa/laml/ActionCommand$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    invoke-virtual {v1}, Llewa/laml/ActionCommand$WifiStateTracker$1;->start()V

    goto :goto_0
.end method
