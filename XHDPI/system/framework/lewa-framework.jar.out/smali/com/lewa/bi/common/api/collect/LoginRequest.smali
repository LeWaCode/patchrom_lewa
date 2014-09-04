.class public Lcom/lewa/bi/common/api/collect/LoginRequest;
.super Lcom/lewa/bi/common/api/ApiRequest;
.source "LoginRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private channel:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "chl"
    .end annotation
.end field

.field private firmwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "os"
    .end annotation
.end field

.field private hardwareModel:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "mod"
    .end annotation
.end field

.field private lastConfigTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->hardwareModel:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConfigTimestamp()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->lastConfigTimestamp:J

    return-wide v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->channel:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "firmwareVersion"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->firmwareVersion:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setHardwareModel(Ljava/lang/String;)V
    .locals 0
    .parameter "hardwareModel"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->hardwareModel:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setLastConfigTimestamp(J)V
    .locals 0
    .parameter "lastConfigTimestamp"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->lastConfigTimestamp:J

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginRequest [lastConfigTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->lastConfigTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->firmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firmwareVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->hardwareModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hardwareModel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->hardwareModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->channel:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/api/collect/LoginRequest;->channel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/bi/common/api/collect/LoginRequest;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lewa/bi/common/api/collect/LoginRequest;->getClientId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/bi/common/api/collect/LoginRequest;->getClientId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method
