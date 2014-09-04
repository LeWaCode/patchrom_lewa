.class public Llewa/bi/sim/MediaTekSimManager;
.super Llewa/bi/sim/LewaSimManagerHelp$SimManager;
.source "MediaTekSimManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaTekSimManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public buildTemplateMobileBySlot(I)Landroid/net/NetworkTemplate;
    .locals 8
    .parameter "slot"

    .prologue
    const/4 v2, 0x0

    .line 26
    :try_start_0
    const-class v1, Landroid/net/NetworkTemplate;

    const-string v3, "buildTemplateMobileAllGemini"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Llewa/bi/sim/MediaTekSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Llewa/bi/sim/MediaTekSimManager;->getSimIdBySlot(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaTekSimManager"

    const-string v3, "buildTemplateMobileBySlot"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 33
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 6
    .parameter "slot"

    .prologue
    .line 50
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getDeviceIdGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Llewa/bi/sim/MediaTekSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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

    .line 54
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaTekSimManager"

    const-string v2, "getSubscriberIdGemini"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    const-string v1, ""

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 6
    .parameter "slot"

    .prologue
    .line 98
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getLine1NumberGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Llewa/bi/sim/MediaTekSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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

    .line 103
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaTekSimManager"

    const-string v2, "getLine1Number"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 6
    .parameter "slot"

    .prologue
    .line 87
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getNetworkOperatorGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Llewa/bi/sim/MediaTekSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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

    .line 92
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaTekSimManager"

    const-string v2, "getNetworkOperator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSimList(Z)Ljava/util/List;
    .locals 17
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
    .line 60
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/bi/sim/MediaTekSimManager;->mSimList:Ljava/util/List;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 61
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Llewa/bi/sim/MediaTekSimManager;->mSimList:Ljava/util/List;

    .line 63
    :try_start_0
    const-string v1, "android.provider.Telephony$SIMInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 64
    .local v7, SIMInfo:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "getInsertedSIMList"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v13, v14

    invoke-virtual {v7, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/bi/sim/MediaTekSimManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v1, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 68
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 69
    .local v12, obj:Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 70
    .local v8, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "mSlot"

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 71
    .local v2, slot:I
    const-string v1, "mSimId"

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 72
    .local v3, id:J
    const-string v1, "mDisplayName"

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    .local v5, label:Ljava/lang/String;
    const-string v1, "mNumber"

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 74
    .local v6, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/bi/sim/MediaTekSimManager;->mSimList:Ljava/util/List;

    new-instance v1, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;

    invoke-direct/range {v1 .. v6}, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v2           #slot:I
    .end local v3           #id:J
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #SIMInfo:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v12           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 78
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "MediaTekSimManager"

    const-string v13, "getSimList"

    invoke-static {v1, v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/bi/sim/MediaTekSimManager;->mSimList:Ljava/util/List;

    return-object v1

    .line 76
    .restart local v7       #SIMInfo:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/bi/sim/MediaTekSimManager;->mSimList:Ljava/util/List;

    new-instance v13, Llewa/bi/sim/LewaSimManagerHelp$SimComparator;

    invoke-direct {v13}, Llewa/bi/sim/LewaSimManagerHelp$SimComparator;-><init>()V

    invoke-static {v1, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 6
    .parameter "slot"

    .prologue
    .line 39
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getSubscriberIdGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Llewa/bi/sim/MediaTekSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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

    .line 44
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaTekSimManager"

    const-string v2, "getSubscriberId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimEnabled(I)Z
    .locals 8
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v4, "getSimStateGemini"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v4, p0, Llewa/bi/sim/MediaTekSimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    move v1, v2

    .line 113
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 109
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaTekSimManager"

    const-string v2, "isSimEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 113
    goto :goto_0
.end method
