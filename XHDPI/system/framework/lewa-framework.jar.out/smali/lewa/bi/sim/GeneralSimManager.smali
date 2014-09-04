.class public Llewa/bi/sim/GeneralSimManager;
.super Llewa/bi/sim/LewaSimManagerHelp$SimManager;
.source "GeneralSimManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneralSimManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public buildTemplateMobileBySlot(I)Landroid/net/NetworkTemplate;
    .locals 3
    .parameter "slot"

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Llewa/bi/sim/GeneralSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeneralSimManager"

    const-string v2, "buildTemplateMobileBySlot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Llewa/bi/sim/GeneralSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 37
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeneralSimManager"

    const-string v2, "getGeneralDeviceId(General)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    const-string v1, ""

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Llewa/bi/sim/GeneralSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeneralSimManager"

    const-string v2, "getLine1Number"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const-string v1, ""

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Llewa/bi/sim/GeneralSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeneralSimManager"

    const-string v2, "getNetworkOperator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const-string v1, ""

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
    .line 53
    iget-object v0, p0, Llewa/bi/sim/GeneralSimManager;->mSimList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llewa/bi/sim/GeneralSimManager;->mSimList:Ljava/util/List;

    .line 56
    :try_start_0
    iget-object v0, p0, Llewa/bi/sim/GeneralSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v7, p0, Llewa/bi/sim/GeneralSimManager;->mSimList:Ljava/util/List;

    new-instance v0, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Llewa/bi/sim/GeneralSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Llewa/bi/sim/GeneralSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Llewa/bi/sim/GeneralSimManager;->mSimList:Ljava/util/List;

    return-object v0

    .line 59
    :catch_0
    move-exception v6

    .line 60
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "GeneralSimManager"

    const-string v1, "getSimList"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "slot"

    .prologue
    .line 24
    :try_start_0
    iget-object v1, p0, Llewa/bi/sim/GeneralSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeneralSimManager"

    const-string v2, "getSubscriberId(General)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    const-string v1, ""

    goto :goto_0
.end method

.method public isSimEnabled(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    .line 89
    :try_start_0
    iget-object v2, p0, Llewa/bi/sim/GeneralSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GeneralSimManager"

    const-string v3, "isSimEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
