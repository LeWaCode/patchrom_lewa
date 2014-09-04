.class public Llewa/bi/report/BIReportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BIReportReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "BIReportReceiver"

    sput-object v0, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startReportService(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 104
    sget-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startReportService: START_TYPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Llewa/bi/report/BIReportService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "start_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 23
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 24
    invoke-direct {p0, p1, v10}, Llewa/bi/report/BIReportReceiver;->startReportService(Landroid/content/Context;I)V

    .line 25
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_0

    .line 26
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    const-string v8, "the net is connecting"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_0

    .line 32
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    const-string v8, "the net is disconnect"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :cond_2
    const-string v7, "bi.lewa.action.UPLOAD_TIME"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 36
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_3

    .line 37
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    const-string v8, "the upload time is now"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_3
    const/4 v7, 0x4

    invoke-direct {p0, p1, v7}, Llewa/bi/report/BIReportReceiver;->startReportService(Landroid/content/Context;I)V

    goto :goto_0

    .line 40
    :cond_4
    const-string v7, "bi.lewa.action.RANDOM_TIME"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 41
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 42
    const/4 v7, 0x5

    invoke-direct {p0, p1, v7}, Llewa/bi/report/BIReportReceiver;->startReportService(Landroid/content/Context;I)V

    .line 44
    :cond_5
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_0

    .line 45
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    const-string v8, "the random time is now"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_6
    const-string v7, "bi.lewa.action.ACCOUNT_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 48
    const-string v7, "bi.lewa.account"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, lewaAccount:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 50
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getBILewaAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, originalAccount:Ljava/lang/String;
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_7

    .line 52
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSetLewaAccount lewaAccount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " originalAccount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 58
    :cond_8
    const-string v7, ""

    invoke-static {p1, v7}, Llewa/bi/common/BICommonUtil;->setBIClientId(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-static {p1, v3}, Llewa/bi/common/BICommonUtil;->setBILewaAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_9

    .line 61
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSetLewaAccount LewaAccount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_9
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 66
    invoke-direct {p0, p1, v10}, Llewa/bi/report/BIReportReceiver;->startReportService(Landroid/content/Context;I)V

    .line 67
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_0

    .line 68
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    const-string v8, "the net is connecting"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 71
    :cond_a
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_0

    .line 72
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    const-string v8, "the net is disconnect"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 76
    .end local v3           #lewaAccount:Ljava/lang/String;
    .end local v6           #originalAccount:Ljava/lang/String;
    :cond_b
    const-string v7, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 77
    const/4 v7, 0x3

    invoke-direct {p0, p1, v7}, Llewa/bi/report/BIReportReceiver;->startReportService(Landroid/content/Context;I)V

    .line 78
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_0

    .line 79
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    const-string v8, "Date Maybe Changeed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 81
    :cond_c
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 83
    invoke-static {p1}, Llewa/bi/BIAgent;->onDeviceFirst(Landroid/content/Context;)V

    .line 84
    const/4 v7, 0x2

    invoke-direct {p0, p1, v7}, Llewa/bi/report/BIReportReceiver;->startReportService(Landroid/content/Context;I)V

    .line 85
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_0

    .line 86
    sget-object v7, Llewa/bi/report/BIReportReceiver;->TAG:Ljava/lang/String;

    const-string v8, "ACTION_BOOT_COMPLETED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    :cond_d
    const-string v7, "bi.lewa.action.LOCATION_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 89
    const-string v7, "latitude"

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    .line 90
    .local v1, latitude:D
    const-string v7, "longitude"

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 91
    .local v4, longitude:D
    cmpl-double v7, v1, v8

    if-nez v7, :cond_e

    cmpl-double v7, v4, v8

    if-eqz v7, :cond_0

    .line 92
    :cond_e
    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Llewa/bi/common/BICommonUtil;->setBILatitude(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Llewa/bi/common/BICommonUtil;->setBILongitude(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Llewa/bi/common/BICommonUtil;->setBILocationTime(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 96
    .end local v1           #latitude:D
    .end local v4           #longitude:D
    :cond_f
    const-string v7, "bi.lewa.action.IMMEDIATELY_REPORT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    const/4 v7, 0x6

    invoke-direct {p0, p1, v7}, Llewa/bi/report/BIReportReceiver;->startReportService(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
