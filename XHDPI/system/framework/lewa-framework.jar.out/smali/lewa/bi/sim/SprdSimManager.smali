.class public Llewa/bi/sim/SprdSimManager;
.super Llewa/bi/sim/LewaSimManagerHelp$SimManager;
.source "SprdSimManager.java"


# static fields
.field private static final CONFIG_MAX_SLOT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SprdSimManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private getTelephonyManagerInfo(ILjava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "slot"
    .parameter "method"

    .prologue
    const/4 v1, 0x0

    .line 24
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "getDefault"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SprdSimManager"

    const-string v3, "getIPhoneSubInfoItem"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public buildTemplateMobileBySlot(I)Landroid/net/NetworkTemplate;
    .locals 3
    .parameter "slot"

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Llewa/bi/sim/SprdSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprdSimManager"

    const-string v2, "buildTemplateMobileBySlot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 48
    :try_start_0
    const-string v1, "getDeviceId"

    invoke-direct {p0, p1, v1}, Llewa/bi/sim/SprdSimManager;->getTelephonyManagerInfo(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprdSimManager"

    const-string v2, "getDeviceId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 81
    :try_start_0
    const-string v1, "getLine1Number"

    invoke-direct {p0, p1, v1}, Llewa/bi/sim/SprdSimManager;->getTelephonyManagerInfo(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprdSimManager"

    const-string v2, "getLine1Number"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 70
    :try_start_0
    const-string v1, "getNetworkOperator"

    invoke-direct {p0, p1, v1}, Llewa/bi/sim/SprdSimManager;->getTelephonyManagerInfo(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprdSimManager"

    const-string v2, "getNetworkOperator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSimList(Z)Ljava/util/List;
    .locals 8
    .parameter "refresh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Llewa/bi/sim/LewaSimManagerHelp$SimInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 91
    iget-object v0, p0, Llewa/bi/sim/SprdSimManager;->mSimList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 92
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llewa/bi/sim/SprdSimManager;->mSimList:Ljava/util/List;

    .line 93
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_2

    .line 94
    invoke-virtual {p0, v1}, Llewa/bi/sim/SprdSimManager;->isSimEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v6, p0, Llewa/bi/sim/SprdSimManager;->mSimList:Ljava/util/List;

    new-instance v0, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;

    int-to-long v2, v1

    invoke-virtual {p0, v1}, Llewa/bi/sim/SprdSimManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Llewa/bi/sim/SprdSimManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1           #i:I
    :cond_2
    iget-object v0, p0, Llewa/bi/sim/SprdSimManager;->mSimList:Ljava/util/List;

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 37
    :try_start_0
    const-string v1, "getSubscriberId"

    invoke-direct {p0, p1, v1}, Llewa/bi/sim/SprdSimManager;->getTelephonyManagerInfo(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprdSimManager"

    const-string v2, "getSubscriberId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimEnabled(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v2, 0x0

    .line 105
    :try_start_0
    const-string v1, "getSimState"

    invoke-direct {p0, p1, v1}, Llewa/bi/sim/SprdSimManager;->getTelephonyManagerInfo(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprdSimManager"

    const-string v3, "isSimEnabled"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 108
    goto :goto_0
.end method
