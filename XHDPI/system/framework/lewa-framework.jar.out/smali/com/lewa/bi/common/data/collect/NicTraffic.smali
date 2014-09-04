.class public Lcom/lewa/bi/common/data/collect/NicTraffic;
.super Ljava/lang/Object;
.source "NicTraffic.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private downStream:J
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "down"
    .end annotation
.end field

.field private imsi:Ljava/lang/String;

.field private upStream:J
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "up"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownStream()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/NicTraffic;->downStream:J

    return-wide v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/NicTraffic;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getUpStream()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/NicTraffic;->upStream:J

    return-wide v0
.end method

.method public setDownStream(J)V
    .locals 0
    .parameter "downStream"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/lewa/bi/common/data/collect/NicTraffic;->downStream:J

    .line 35
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/NicTraffic;->imsi:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUpStream(J)V
    .locals 0
    .parameter "upStream"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/lewa/bi/common/data/collect/NicTraffic;->upStream:J

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimFlowInfo [SIMImsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/NicTraffic;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", upStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lewa/bi/common/data/collect/NicTraffic;->upStream:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lewa/bi/common/data/collect/NicTraffic;->downStream:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
