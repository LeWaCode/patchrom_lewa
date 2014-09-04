.class public Llewa/bi/BIAgent;
.super Ljava/lang/Object;
.source "BIAgent.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static biAgentEntity:Llewa/bi/BIAgent;

.field private static mLocChangeNum:I

.field private static threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "BIAgent"

    sput-object v0, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput v0, Llewa/bi/BIAgent;->mLocChangeNum:I

    .line 45
    new-instance v0, Llewa/bi/BIAgent;

    invoke-direct {v0}, Llewa/bi/BIAgent;-><init>()V

    sput-object v0, Llewa/bi/BIAgent;->biAgentEntity:Llewa/bi/BIAgent;

    .line 46
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Llewa/bi/BIAgent;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBIAgent()Llewa/bi/BIAgent;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Llewa/bi/BIAgent;->biAgentEntity:Llewa/bi/BIAgent;

    return-object v0
.end method

.method public static getBIClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    sget-object v0, Llewa/bi/common/BICommonUtil;->BI_CLEINT_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Llewa/bi/common/BICommonUtil;->getXmlItemValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static needSaveDeviceFirst(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 188
    .local v6, cEvent:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Llewa/bi/provider/BI$DeviceReportColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 192
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v8

    .line 199
    :goto_1
    return v1

    .line 189
    :catch_0
    move-exception v7

    .line 190
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz v6, :cond_1

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v9

    .line 199
    goto :goto_1
.end method

.method public static onAppUsage(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "context"
    .parameter "appName"
    .parameter "startTime"
    .parameter "durtion"

    .prologue
    .line 88
    :try_start_0
    invoke-static/range {p0 .. p5}, Llewa/bi/BIAgent;->trackAppUsage(Landroid/content/Context;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v2, "onAppUsage has error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onDeviceFirst(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 97
    invoke-static {p0}, Llewa/bi/BIAgent;->needSaveDeviceFirst(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    sget-object v1, Llewa/bi/BIAgent;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Llewa/bi/common/BIDeviceFirstThread;

    invoke-direct {v2, p0}, Llewa/bi/common/BIDeviceFirstThread;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v2, "Exception occurred in onEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "event_id"

    .prologue
    .line 53
    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Llewa/bi/BIAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method private static onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .parameter "context"
    .parameter "event_id"
    .parameter "type"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 131
    sget-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v1, "unexpected null context in onEvent(4p)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    sget-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v1, "tag is null or empty in onEvent(4p)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_2
    :try_start_0
    sget-object v7, Llewa/bi/BIAgent;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Llewa/bi/common/BIEventThread;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Llewa/bi/common/BIEventThread;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v6

    .line 145
    .local v6, e:Ljava/lang/Exception;
    sget-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred in onEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "event_id"
    .parameter "label"

    .prologue
    .line 57
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Llewa/bi/BIAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 58
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "context"
    .parameter "event_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    const-string v1, ""

    invoke-static {p0, p1, v0, v1, p2}, Llewa/bi/BIAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 62
    return-void
.end method

.method public static onMarketInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 14
    .parameter "context"
    .parameter "event"
    .parameter "packageName"
    .parameter "appName"
    .parameter "version"
    .parameter "path"
    .parameter "status"
    .parameter "netType"
    .parameter "packageSize"
    .parameter "finishTime"

    .prologue
    .line 111
    if-nez p0, :cond_1

    .line 112
    sget-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v1, "unexpected null context in onEvent(4p)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    :try_start_0
    sget-object v13, Llewa/bi/BIAgent;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Llewa/bi/common/BIMarketInstallThread;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Llewa/bi/common/BIMarketInstallThread;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v13, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v12

    .line 120
    .local v12, e:Ljava/lang/Exception;
    sget-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred in onEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onSetLewaAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "LewaAccount"

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bi.lewa.action.ACCOUNT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bi.lewa.account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static onSetLocation(Landroid/content/Context;DD)V
    .locals 4
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    cmpl-double v1, p1, v2

    if-nez v1, :cond_0

    cmpl-double v1, p3, v2

    if-eqz v1, :cond_2

    :cond_0
    sget v1, Llewa/bi/BIAgent;->mLocChangeNum:I

    if-nez v1, :cond_2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bi.lewa.action.LOCATION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "latitude"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 76
    const-string v1, "longitude"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    sget v1, Llewa/bi/BIAgent;->mLocChangeNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Llewa/bi/BIAgent;->mLocChangeNum:I

    .line 80
    sget v1, Llewa/bi/BIAgent;->mLocChangeNum:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 81
    const/4 v1, 0x0

    sput v1, Llewa/bi/BIAgent;->mLocChangeNum:I

    goto :goto_0
.end method

.method public static saveAppUsage(Llewa/bi/BIAgent;Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 7
    .parameter "biAgent"
    .parameter "context"
    .parameter "packageName"
    .parameter "startTime"
    .parameter "durtion"

    .prologue
    .line 323
    sput-object p0, Llewa/bi/BIAgent;->biAgentEntity:Llewa/bi/BIAgent;

    .line 324
    sget-object v0, Llewa/bi/BIAgent;->biAgentEntity:Llewa/bi/BIAgent;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Llewa/bi/BIAgent;->saveAppUsage(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 325
    return-void
.end method

.method public static saveDeviceFirst(Llewa/bi/BIAgent;Landroid/content/Context;)V
    .locals 13
    .parameter "biAgent"
    .parameter "context"

    .prologue
    .line 202
    sput-object p0, Llewa/bi/BIAgent;->biAgentEntity:Llewa/bi/BIAgent;

    .line 203
    const/4 v7, 0x0

    .line 204
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 206
    .local v3, pManager:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 207
    .local v5, packlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v8, Llewa/bi/common/LocalBIWhiteApp;

    invoke-direct {v8, p1}, Llewa/bi/common/LocalBIWhiteApp;-><init>(Landroid/content/Context;)V

    .line 208
    .local v8, white:Llewa/bi/common/IBIWhiteApp;
    invoke-interface {v8}, Llewa/bi/common/IBIWhiteApp;->getWhiteApps()Ljava/util/List;

    move-result-object v9

    .line 209
    .local v9, white_apps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 210
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 211
    .local v6, pak:Landroid/content/pm/PackageInfo;
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .restart local v7       #values:Landroid/content/ContentValues;
    const-string v10, "name"

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v10, "id"

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v10, "ver"

    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v10, "vname"

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 217
    new-instance v4, Ljava/io/File;

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v4, pack:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    .line 220
    :try_start_0
    const-string v10, "md5"

    const-string v11, "MD5"

    invoke-static {v4, v11}, Llewa/bi/utils/LewaMD5Utils;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v4           #pack:Ljava/io/File;
    :cond_0
    :goto_1
    sget-object v10, Llewa/bi/provider/BI$DeviceReportColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .restart local v4       #pack:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 228
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #pack:Ljava/io/File;
    .end local v6           #pak:Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method public static saveEvent(Llewa/bi/BIAgent;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "biAgent"
    .parameter "context"
    .parameter "event_id"
    .parameter "type"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llewa/bi/BIAgent;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Llewa/bi/BIAgent;->biAgentEntity:Llewa/bi/BIAgent;

    .line 232
    sget-object v0, Llewa/bi/BIAgent;->biAgentEntity:Llewa/bi/BIAgent;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Llewa/bi/BIAgent;->saveEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 233
    return-void
.end method

.method public static saveMarketInstall(Llewa/bi/BIAgent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "biAgent"
    .parameter "context"
    .parameter "event"
    .parameter "packageName"
    .parameter "appName"
    .parameter "version"
    .parameter "path"
    .parameter "status"
    .parameter "netType"
    .parameter "packageSize"
    .parameter "finishTime"

    .prologue
    .line 236
    sput-object p0, Llewa/bi/BIAgent;->biAgentEntity:Llewa/bi/BIAgent;

    .line 237
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
    .local v0, cr:Landroid/content/ContentResolver;
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_0

    .line 240
    sget-object v2, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveMarketInstall saveEvent packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    const-string v2, "event"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "package"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v2, "appName"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "version"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v2, "path"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "status"

    invoke-virtual {v1, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "netType"

    invoke-virtual {v1, v2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "packageSize"

    invoke-virtual {v1, v2, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "clientTime"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    sget-object v2, Llewa/bi/provider/BI$MarketInstallColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 254
    new-instance v2, Landroid/content/Intent;

    const-string v3, "bi.lewa.action.IMMEDIATELY_REPORT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method public static setLewaPartner(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "partner"

    .prologue
    .line 153
    invoke-static {p0, p1}, Llewa/bi/common/BICommonUtil;->setBIPartner(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private static trackAppUsage(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "context"
    .parameter "appName"
    .parameter "startTime"
    .parameter "durtionTime"

    .prologue
    const-wide/16 v1, 0x0

    .line 158
    if-nez p1, :cond_1

    .line 159
    sget-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v1, "pkgName cannot be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pkgName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    cmp-long v0, p2, v1

    if-eqz v0, :cond_2

    cmp-long v0, p4, v1

    if-nez v0, :cond_4

    .line 165
    :cond_2
    sget-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v0, :cond_3

    .line 166
    sget-object v0, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v1, "Time cannot be zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time cannot be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_4
    :try_start_0
    sget-object v8, Llewa/bi/BIAgent;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Llewa/bi/common/BIAppUsageThread;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Llewa/bi/common/BIAppUsageThread;-><init>(Landroid/content/Context;Ljava/lang/String;JJ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_5
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v7

    .line 174
    .local v7, e:Ljava/lang/Exception;
    sget-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v0, :cond_5

    .line 175
    sget-object v0, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred in onAppUsage()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public saveAppUsage(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "startTime"
    .parameter "durtion"

    .prologue
    .line 328
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    .local v0, cr:Landroid/content/ContentResolver;
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_0

    .line 332
    sget-object v3, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveEvent packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " durtion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    const-string v3, "appName"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v3, "startTime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    const-string v3, "drution"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    const-string v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    sget-object v3, Llewa/bi/provider/BI$AppUsageColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 341
    .local v1, uri:Landroid/net/Uri;
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_1

    .line 342
    sget-object v3, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveAppUsage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    return-void
.end method

.method public saveEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 17
    .parameter "context"
    .parameter "event_id"
    .parameter "type"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 262
    .local v1, cr:Landroid/content/ContentResolver;
    sget-boolean v14, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v14, :cond_0

    .line 263
    sget-object v14, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveEvent event_id:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " type:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " label:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, packageName:Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v14, "android"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 268
    const-string v8, "com.lewa.os"

    .line 271
    :cond_1
    const-string v14, "appId"

    invoke-virtual {v13, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v14, 0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_3

    .line 274
    const-string v14, "eventId"

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v14, "type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v14, "label"

    move-object/from16 v0, p4

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v14, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 279
    sget-object v14, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 280
    .local v11, uri:Landroid/net/Uri;
    sget-boolean v14, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v14, :cond_2

    .line 281
    sget-object v14, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT/EVENT_BALEL:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v11           #uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 283
    :cond_3
    const/4 v14, 0x2

    move/from16 v0, p3

    if-ne v0, v14, :cond_7

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 285
    .local v9, time:J
    const-string v14, "eventId"

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v14, "type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v14, "label"

    move-object/from16 v0, p4

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v14, "time"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 289
    sget-object v14, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 290
    .restart local v11       #uri:Landroid/net/Uri;
    sget-boolean v14, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v14, :cond_4

    .line 291
    sget-object v14, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_MAP"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_4
    if-eqz v11, :cond_2

    .line 295
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 296
    .local v7, mapValues:Landroid/content/ContentValues;
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 297
    .local v5, it:Ljava/util/Iterator;
    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v3, v14

    .line 298
    .local v3, id:J
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 299
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 300
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 301
    .local v6, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 302
    .local v12, value:Ljava/lang/String;
    sget-boolean v14, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v14, :cond_6

    .line 303
    sget-object v14, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT/MAP key:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_6
    const-string v14, "event_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-string v14, "eventKey"

    invoke-virtual {v7, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v14, "EventValue"

    invoke-virtual {v7, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v14, "time"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    sget-object v14, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v14, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 310
    sget-boolean v14, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v14, :cond_5

    .line 311
    sget-object v14, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_MAP"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 316
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v3           #id:J
    .end local v5           #it:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #mapValues:Landroid/content/ContentValues;
    .end local v9           #time:J
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #value:Ljava/lang/String;
    :cond_7
    sget-boolean v14, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v14, :cond_2

    .line 317
    sget-object v14, Llewa/bi/BIAgent;->TAG:Ljava/lang/String;

    const-string v15, "the error event type"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
