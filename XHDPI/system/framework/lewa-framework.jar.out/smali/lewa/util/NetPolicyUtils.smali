.class public Llewa/util/NetPolicyUtils;
.super Ljava/lang/Object;
.source "NetPolicyUtils.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lewa.netmgr.policy"

.field private static final PACKAGE_URI:Landroid/net/Uri; = null

.field public static final POLICY_METERED:I = 0x4

.field public static final POLICY_MOBILE:I = 0x2

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UID_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Llewa/util/NetPolicyUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/util/NetPolicyUtils;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "content://com.lewa.netmgr.policy/uid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/util/NetPolicyUtils;->UID_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://com.lewa.netmgr.policy/package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/util/NetPolicyUtils;->PACKAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .parameter "template"

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 245
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    return-object v0
.end method

.method public static ensureNetLimitExceeded(Landroid/content/Context;)Z
    .locals 30
    .parameter "context"

    .prologue
    .line 195
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/TelephonyManager;

    .line 197
    .local v23, telephony:Landroid/telephony/TelephonyManager;
    const-string v3, "netpolicy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v19

    .line 199
    .local v19, policyService:Landroid/net/INetworkPolicyManager;
    const-string v3, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 202
    .local v10, conn:Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    const/16 v16, 0x0

    .line 239
    :cond_0
    :goto_0
    return v16

    .line 204
    :cond_1
    const/16 v22, 0x0

    .line 206
    .local v22, subscriberId:Ljava/lang/String;
    :try_start_1
    const-class v3, Landroid/net/ConnectivityManager;

    const-string v26, "getDataActivedSubscriberId"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v3, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #subscriberId:Ljava/lang/String;
    check-cast v22, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    .restart local v22       #subscriberId:Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-static/range {v22 .. v22}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    .line 211
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-interface/range {v19 .. v19}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v17

    .line 212
    .local v17, policies:[Landroid/net/NetworkPolicy;
    move-object/from16 v9, v17

    .local v9, arr$:[Landroid/net/NetworkPolicy;
    array-length v15, v9

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    if-ge v14, v15, :cond_3

    aget-object v18, v9, v14

    .line 213
    .local v18, policy:Landroid/net/NetworkPolicy;
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 214
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v3, v26, v28

    if-nez v3, :cond_2

    .line 215
    const/16 v16, 0x0

    goto :goto_0

    .line 207
    .end local v4           #template:Landroid/net/NetworkTemplate;
    .end local v9           #arr$:[Landroid/net/NetworkPolicy;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v17           #policies:[Landroid/net/NetworkPolicy;
    .end local v18           #policy:Landroid/net/NetworkPolicy;
    .end local v22           #subscriberId:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 208
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v22

    .restart local v22       #subscriberId:Ljava/lang/String;
    goto :goto_1

    .line 216
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v4       #template:Landroid/net/NetworkTemplate;
    .restart local v9       #arr$:[Landroid/net/NetworkPolicy;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v17       #policies:[Landroid/net/NetworkPolicy;
    .restart local v18       #policy:Landroid/net/NetworkPolicy;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 218
    .local v11, currentTime:J
    move-object/from16 v0, v18

    invoke-static {v11, v12, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v5

    .line 219
    .local v5, start:J
    move-wide v7, v11

    .line 220
    .local v7, end:J
    invoke-static/range {p0 .. p0}, Llewa/util/NetworkHelperFactory;->getNetworkHelper(Landroid/content/Context;)Llewa/util/NetworkHelperFactory$NetworkHelper;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Llewa/util/NetworkHelperFactory$NetworkHelper;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v24

    .line 221
    .local v24, totalBytes:J
    const-wide/16 v20, 0x0

    .line 223
    .local v20, snooze:J
    :try_start_3
    const-class v3, Landroid/net/NetworkPolicy;

    const-string v26, "lastSnooze"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v20

    .line 231
    :goto_3
    :try_start_4
    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v3

    if-eqz v3, :cond_4

    cmp-long v3, v20, v5

    if-gez v3, :cond_4

    const/16 v16, 0x1

    .line 232
    .local v16, overLimit:Z
    :goto_4
    if-eqz v16, :cond_0

    .line 233
    invoke-static {v4}, Llewa/util/NetPolicyUtils;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 237
    .end local v4           #template:Landroid/net/NetworkTemplate;
    .end local v5           #start:J
    .end local v7           #end:J
    .end local v9           #arr$:[Landroid/net/NetworkPolicy;
    .end local v11           #currentTime:J
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #overLimit:Z
    .end local v17           #policies:[Landroid/net/NetworkPolicy;
    .end local v18           #policy:Landroid/net/NetworkPolicy;
    .end local v20           #snooze:J
    .end local v22           #subscriberId:Ljava/lang/String;
    .end local v24           #totalBytes:J
    :catch_1
    move-exception v3

    .line 239
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 224
    .restart local v4       #template:Landroid/net/NetworkTemplate;
    .restart local v5       #start:J
    .restart local v7       #end:J
    .restart local v9       #arr$:[Landroid/net/NetworkPolicy;
    .restart local v11       #currentTime:J
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v17       #policies:[Landroid/net/NetworkPolicy;
    .restart local v18       #policy:Landroid/net/NetworkPolicy;
    .restart local v20       #snooze:J
    .restart local v22       #subscriberId:Ljava/lang/String;
    .restart local v24       #totalBytes:J
    :catch_2
    move-exception v13

    .line 226
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_5
    const-class v3, Landroid/net/NetworkPolicy;

    const-string v26, "lastLimitSnooze"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v20

    goto :goto_3

    .line 231
    .end local v13           #e:Ljava/lang/Exception;
    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    .line 212
    .end local v5           #start:J
    .end local v7           #end:J
    .end local v11           #currentTime:J
    .end local v20           #snooze:J
    .end local v24           #totalBytes:J
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 227
    .restart local v5       #start:J
    .restart local v7       #end:J
    .restart local v11       #currentTime:J
    .restart local v13       #e:Ljava/lang/Exception;
    .restart local v20       #snooze:J
    .restart local v24       #totalBytes:J
    :catch_3
    move-exception v3

    goto :goto_3
.end method

.method public static getPolicy(Landroid/content/Context;Ljava/lang/Object;)I
    .locals 10
    .parameter "context"
    .parameter "packageOrUid"

    .prologue
    .line 118
    const/4 v9, 0x0

    .line 119
    .local v9, policy:I
    instance-of v8, p1, Ljava/lang/String;

    .line 120
    .local v8, isPackageName:Z
    if-nez v8, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 122
    :cond_0
    const/4 v6, 0x0

    .line 124
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v8, :cond_3

    sget-object v1, Llewa/util/NetPolicyUtils;->PACKAGE_URI:Landroid/net/Uri;

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 131
    :cond_1
    if-eqz v6, :cond_2

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_2
    :goto_1
    return v9

    .line 124
    :cond_3
    :try_start_1
    sget-object v1, Llewa/util/NetPolicyUtils;->UID_URI:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v7

    .line 129
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Llewa/util/NetPolicyUtils;->TAG:Ljava/lang/String;

    const-string v1, "getPolicy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    if-eqz v6, :cond_2

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 131
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static isNetworkBlocked(Landroid/content/Context;I)Z
    .locals 12
    .parameter "context"
    .parameter "uid"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 53
    const/4 v6, 0x0

    .line 55
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Llewa/util/NetPolicyUtils;->UID_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 58
    .local v9, policy:I
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 60
    .local v7, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    if-eqz v6, :cond_0

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    .end local v7           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #policy:I
    :cond_0
    :goto_0
    return v10

    .line 62
    .restart local v7       #cm:Landroid/net/ConnectivityManager;
    .restart local v9       #policy:I
    :pswitch_0
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_2

    move v0, v10

    .line 71
    :goto_1
    if-eqz v6, :cond_1

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v10, v0

    goto :goto_0

    :cond_2
    move v0, v11

    .line 62
    goto :goto_1

    .line 64
    :pswitch_1
    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_3

    .line 71
    :goto_2
    if-eqz v6, :cond_0

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    move v10, v11

    .line 64
    goto :goto_2

    .line 71
    .end local v7           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #policy:I
    :cond_4
    if-eqz v6, :cond_5

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    move v10, v11

    .line 74
    goto :goto_0

    .line 68
    :catch_0
    move-exception v8

    .line 69
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Llewa/util/NetPolicyUtils;->TAG:Ljava/lang/String;

    const-string v1, "isNetworkBlocked"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v6, :cond_5

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 71
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isNetworkBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 88
    .local v1, uid:I
    invoke-static {p0, v1}, Llewa/util/NetPolicyUtils;->isNetworkBlocked(Landroid/content/Context;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 92
    .end local v1           #uid:I
    :goto_0
    return v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Llewa/util/NetPolicyUtils;->TAG:Ljava/lang/String;

    const-string v4, "isNetworkBlocked"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setPolicy(Landroid/content/Context;Ljava/lang/Object;IZ)V
    .locals 5
    .parameter "context"
    .parameter "packageOrUid"
    .parameter "policyType"
    .parameter "blocked"

    .prologue
    .line 146
    instance-of v0, p1, Ljava/lang/String;

    .line 147
    .local v0, isPackageName:Z
    if-nez v0, :cond_0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 148
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 149
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 150
    .local v2, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    .line 151
    const-string v4, "package"

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    invoke-static {p0, p1}, Llewa/util/NetPolicyUtils;->getPolicy(Landroid/content/Context;Ljava/lang/Object;)I

    move-result v1

    .line 156
    .local v1, policy:I
    if-eqz p3, :cond_2

    .line 157
    or-int/2addr v1, p2

    .line 160
    :goto_1
    const-string v3, "policy"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v0, :cond_3

    sget-object v3, Llewa/util/NetPolicyUtils;->PACKAGE_URI:Landroid/net/Uri;

    :goto_2
    invoke-virtual {v4, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 162
    return-void

    .line 153
    .end local v1           #policy:I
    :cond_1
    const-string v4, "uid"

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 159
    .restart local v1       #policy:I
    :cond_2
    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v1, v3

    goto :goto_1

    .line 161
    :cond_3
    sget-object v3, Llewa/util/NetPolicyUtils;->UID_URI:Landroid/net/Uri;

    goto :goto_2
.end method

.method public static startFirewallActivity(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 102
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.lewa.netmgr"

    const-string v3, "com.lewa.netmgr.ManagerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v2, "tab"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Llewa/util/NetPolicyUtils;->TAG:Ljava/lang/String;

    const-string v3, "startFirewallActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static togglePolicy(Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 4
    .parameter "context"
    .parameter "packageOrUid"
    .parameter "policyType"

    .prologue
    .line 172
    instance-of v0, p1, Ljava/lang/String;

    .line 173
    .local v0, isPackageName:Z
    if-nez v0, :cond_0

    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 175
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 176
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    .line 177
    const-string v3, "package"

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    const-string v2, "policy"

    invoke-static {p0, p1}, Llewa/util/NetPolicyUtils;->getPolicy(Landroid/content/Context;Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v0, :cond_2

    sget-object v2, Llewa/util/NetPolicyUtils;->PACKAGE_URI:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 183
    return-void

    .line 179
    :cond_1
    const-string v3, "uid"

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 182
    :cond_2
    sget-object v2, Llewa/util/NetPolicyUtils;->UID_URI:Landroid/net/Uri;

    goto :goto_1
.end method
