.class public Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
.super Ljava/lang/Object;
.source "AppTrafficInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/lewa/bi/common/data/WithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/lewa/bi/common/data/WithId",
        "<",
        "Lcom/lewa/bi/common/data/collect/AppId;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:Lcom/lewa/bi/common/data/collect/AppId;

.field private sim1Info:Lcom/lewa/bi/common/data/collect/NicTraffic;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "sim1"
    .end annotation
.end field

.field private sim2Info:Lcom/lewa/bi/common/data/collect/NicTraffic;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "sim2"
    .end annotation
.end field

.field private time:J

.field private wifiInfo:Lcom/lewa/bi/common/data/collect/NicTraffic;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "wifi"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getId()Lcom/lewa/bi/common/data/BaseId;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->getId()Lcom/lewa/bi/common/data/collect/AppId;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/lewa/bi/common/data/collect/AppId;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->id:Lcom/lewa/bi/common/data/collect/AppId;

    return-object v0
.end method

.method public getSim1Info()Lcom/lewa/bi/common/data/collect/NicTraffic;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->sim1Info:Lcom/lewa/bi/common/data/collect/NicTraffic;

    return-object v0
.end method

.method public getSim2Info()Lcom/lewa/bi/common/data/collect/NicTraffic;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->sim2Info:Lcom/lewa/bi/common/data/collect/NicTraffic;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->time:J

    return-wide v0
.end method

.method public getWifiInfo()Lcom/lewa/bi/common/data/collect/NicTraffic;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->wifiInfo:Lcom/lewa/bi/common/data/collect/NicTraffic;

    return-object v0
.end method

.method public setId(Lcom/lewa/bi/common/data/collect/AppId;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->id:Lcom/lewa/bi/common/data/collect/AppId;

    .line 63
    return-void
.end method

.method public setSim1Info(Lcom/lewa/bi/common/data/collect/NicTraffic;)V
    .locals 0
    .parameter "sim1Info"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->sim1Info:Lcom/lewa/bi/common/data/collect/NicTraffic;

    .line 67
    return-void
.end method

.method public setSim2Info(Lcom/lewa/bi/common/data/collect/NicTraffic;)V
    .locals 0
    .parameter "sim2Info"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->sim2Info:Lcom/lewa/bi/common/data/collect/NicTraffic;

    .line 71
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->time:J

    .line 75
    return-void
.end method

.method public setWifiInfo(Lcom/lewa/bi/common/data/collect/NicTraffic;)V
    .locals 0
    .parameter "wifiInfo"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->wifiInfo:Lcom/lewa/bi/common/data/collect/NicTraffic;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppTrafficInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->id:Lcom/lewa/bi/common/data/collect/AppId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sim1Info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->sim1Info:Lcom/lewa/bi/common/data/collect/NicTraffic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sim2Info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->sim2Info:Lcom/lewa/bi/common/data/collect/NicTraffic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->wifiInfo:Lcom/lewa/bi/common/data/collect/NicTraffic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
