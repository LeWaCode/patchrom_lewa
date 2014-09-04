.class public Llewa/bi/sim/CodeAroraSimManager;
.super Llewa/bi/sim/GeneralSimManager;
.source "CodeAroraSimManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CodeAroraSimManager"


# instance fields
.field private mPreferredSubscription:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Llewa/bi/sim/GeneralSimManager;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Llewa/bi/sim/CodeAroraSimManager;->mPreferredSubscription:I

    .line 16
    return-void
.end method

.method private getMSimTelephonyManager()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 42
    :try_start_0
    const-string v2, "android.telephony.MSimTelephonyManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDefault"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CodeAroraSimManager"

    const-string v3, "getMSimTelephonyManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPreferredDataSubscription()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 20
    :try_start_0
    iget-object v2, p0, Llewa/bi/sim/CodeAroraSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 24
    :goto_0
    return v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CodeAroraSimManager"

    const-string v3, "getPreferredDataSubscription"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId(I)Ljava/lang/String;
    .locals 6
    .parameter "slot"

    .prologue
    .line 31
    :try_start_0
    const-string v1, "android.telephony.MSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDeviceId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {p0}, Llewa/bi/sim/CodeAroraSimManager;->getMSimTelephonyManager()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CodeAroraSimManager"

    const-string v2, "getDeviceId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    const-string v1, ""

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 6
    .parameter "slot"

    .prologue
    .line 77
    :try_start_0
    const-string v1, "android.telephony.MSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLine1Number"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {p0}, Llewa/bi/sim/CodeAroraSimManager;->getMSimTelephonyManager()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CodeAroraSimManager"

    const-string v2, "getLine1Number"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const-string v1, ""

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 6
    .parameter "slot"

    .prologue
    .line 65
    :try_start_0
    const-string v1, "android.telephony.MSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSimOperatorName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {p0}, Llewa/bi/sim/CodeAroraSimManager;->getMSimTelephonyManager()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CodeAroraSimManager"

    const-string v2, "getTelephonyProperty"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSimList(Z)Ljava/util/List;
    .locals 7
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
    .line 88
    iget-object v0, p0, Llewa/bi/sim/CodeAroraSimManager;->mSimList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 89
    :cond_0
    invoke-direct {p0}, Llewa/bi/sim/CodeAroraSimManager;->getPreferredDataSubscription()I

    move-result v1

    iput v1, p0, Llewa/bi/sim/CodeAroraSimManager;->mPreferredSubscription:I

    .line 90
    .local v1, slot:I
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llewa/bi/sim/CodeAroraSimManager;->mSimList:Ljava/util/List;

    .line 91
    invoke-virtual {p0, v1}, Llewa/bi/sim/CodeAroraSimManager;->isSimEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v6, p0, Llewa/bi/sim/CodeAroraSimManager;->mSimList:Ljava/util/List;

    new-instance v0, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;

    int-to-long v2, v1

    invoke-virtual {p0, v1}, Llewa/bi/sim/CodeAroraSimManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Llewa/bi/sim/CodeAroraSimManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v1           #slot:I
    :cond_1
    iget-object v0, p0, Llewa/bi/sim/CodeAroraSimManager;->mSimList:Ljava/util/List;

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 6
    .parameter "slot"

    .prologue
    .line 53
    :try_start_0
    const-string v1, "android.telephony.MSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {p0}, Llewa/bi/sim/CodeAroraSimManager;->getMSimTelephonyManager()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CodeAroraSimManager"

    const-string v2, "getSubscriberId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method
