.class public Llewa/bi/common/BIConfigItem;
.super Lcom/lewa/bi/common/data/collect/ConfigItem;
.source "BIConfigItem.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private lastReportTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/lewa/bi/common/data/collect/ConfigItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastReportTime()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Llewa/bi/common/BIConfigItem;->lastReportTime:J

    return-wide v0
.end method

.method public getNextReportTime()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Llewa/bi/common/BIConfigItem;->lastReportTime:J

    return-wide v0
.end method

.method public setLastReportTime(J)V
    .locals 0
    .parameter "lastReportTime"

    .prologue
    .line 19
    iput-wide p1, p0, Llewa/bi/common/BIConfigItem;->lastReportTime:J

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIConfigItem [lastReportTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Llewa/bi/common/BIConfigItem;->lastReportTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
