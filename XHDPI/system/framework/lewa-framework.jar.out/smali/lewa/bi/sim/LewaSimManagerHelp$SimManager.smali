.class public abstract Llewa/bi/sim/LewaSimManagerHelp$SimManager;
.super Ljava/lang/Object;
.source "LewaSimManagerHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/bi/sim/LewaSimManagerHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimManager"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llewa/bi/sim/LewaSimManagerHelp$SimInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->mContext:Landroid/content/Context;

    .line 104
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 106
    return-void
.end method


# virtual methods
.method public abstract buildTemplateMobileBySlot(I)Landroid/net/NetworkTemplate;
.end method

.method public abstract getDeviceId(I)Ljava/lang/String;
.end method

.method public abstract getLine1Number(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperator(I)Ljava/lang/String;
.end method

.method public getSimIdBySlot(I)J
    .locals 4
    .parameter "slot"

    .prologue
    .line 123
    invoke-virtual {p0}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->getSimList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;

    .line 124
    .local v1, info:Llewa/bi/sim/LewaSimManagerHelp$SimInfo;
    iget v2, v1, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->slot:I

    if-ne v2, p1, :cond_0

    .line 125
    iget-wide v2, v1, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->simId:J

    .line 127
    .end local v1           #info:Llewa/bi/sim/LewaSimManagerHelp$SimInfo;
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getSimList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llewa/bi/sim/LewaSimManagerHelp$SimInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->getSimList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSimList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Llewa/bi/sim/LewaSimManagerHelp$SimInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getSlotBySimId(J)I
    .locals 5
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0, v2}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->getSimList(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;

    .line 132
    .local v1, info:Llewa/bi/sim/LewaSimManagerHelp$SimInfo;
    iget-wide v3, v1, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->simId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 133
    iget v2, v1, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->slot:I

    .line 135
    .end local v1           #info:Llewa/bi/sim/LewaSimManagerHelp$SimInfo;
    :cond_1
    return v2
.end method

.method public abstract getSubscriberId(I)Ljava/lang/String;
.end method

.method public abstract isSimEnabled(I)Z
.end method
