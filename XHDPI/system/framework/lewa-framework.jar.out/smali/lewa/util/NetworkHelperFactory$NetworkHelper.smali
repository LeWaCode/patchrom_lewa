.class public abstract Llewa/util/NetworkHelperFactory$NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/NetworkHelperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NetworkHelper"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPolicyService:Landroid/net/INetworkPolicyManager;

.field protected mStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Llewa/util/NetworkHelperFactory$NetworkHelper;->mStatsService:Landroid/net/INetworkStatsService;

    .line 56
    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Llewa/util/NetworkHelperFactory$NetworkHelper;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 62
    iput-object p1, p0, Llewa/util/NetworkHelperFactory$NetworkHelper;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private static resetField(Landroid/net/NetworkPolicy;Ljava/lang/String;)V
    .locals 3
    .parameter "policy"
    .parameter "field"

    .prologue
    .line 120
    :try_start_0
    const-class v0, Landroid/net/NetworkPolicy;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resetSnooze(Landroid/net/NetworkPolicy;)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 113
    const-string v0, "lastSnooze"

    invoke-static {p0, v0}, Llewa/util/NetworkHelperFactory$NetworkHelper;->resetField(Landroid/net/NetworkPolicy;Ljava/lang/String;)V

    .line 114
    const-string v0, "lastWarningSnooze"

    invoke-static {p0, v0}, Llewa/util/NetworkHelperFactory$NetworkHelper;->resetField(Landroid/net/NetworkPolicy;Ljava/lang/String;)V

    .line 115
    const-string v0, "lastLimitSnooze"

    invoke-static {p0, v0}, Llewa/util/NetworkHelperFactory$NetworkHelper;->resetField(Landroid/net/NetworkPolicy;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static setPolicyCycleDay(Landroid/net/NetworkPolicy;I)V
    .locals 1
    .parameter "policy"
    .parameter "cycleDay"

    .prologue
    .line 95
    invoke-static {p0}, Llewa/util/NetworkHelperFactory$NetworkHelper;->resetSnooze(Landroid/net/NetworkPolicy;)V

    .line 96
    iput p1, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->active:Z

    .line 98
    return-void
.end method

.method public static setPolicyLimitBytes(Landroid/net/NetworkPolicy;J)V
    .locals 1
    .parameter "policy"
    .parameter "limitBytes"

    .prologue
    .line 107
    invoke-static {p0}, Llewa/util/NetworkHelperFactory$NetworkHelper;->resetSnooze(Landroid/net/NetworkPolicy;)V

    .line 108
    iput-wide p1, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->active:Z

    .line 110
    return-void
.end method

.method public static setPolicyWarningBytes(Landroid/net/NetworkPolicy;J)V
    .locals 1
    .parameter "policy"
    .parameter "warningBytes"

    .prologue
    .line 101
    invoke-static {p0}, Llewa/util/NetworkHelperFactory$NetworkHelper;->resetSnooze(Landroid/net/NetworkPolicy;)V

    .line 102
    iput-wide p1, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->active:Z

    .line 104
    return-void
.end method


# virtual methods
.method public buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 7
    .parameter "template"

    .prologue
    const-wide/16 v3, -0x1

    .line 91
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Llewa/util/NetworkHelperFactory$NetworkHelper;->buildPolicy(Landroid/net/NetworkTemplate;IJJ)Landroid/net/NetworkPolicy;

    move-result-object v0

    return-object v0
.end method

.method public abstract buildPolicy(Landroid/net/NetworkTemplate;IJJ)Landroid/net/NetworkPolicy;
.end method

.method public abstract getAppPolicy(I)I
.end method

.method public abstract getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
.end method

.method public abstract getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
.end method

.method public abstract getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
.end method

.method public abstract setAppPolicy(II)V
.end method
