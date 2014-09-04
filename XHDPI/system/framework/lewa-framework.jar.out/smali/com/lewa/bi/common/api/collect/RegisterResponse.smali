.class public Lcom/lewa/bi/common/api/collect/RegisterResponse;
.super Lcom/lewa/bi/common/api/ApiResponse;
.source "RegisterResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private configItems:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "ci"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/ConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private configTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "ct"
    .end annotation
.end field

.field private isNew:Z


# direct methods
.method public constructor <init>(Lcom/lewa/bi/common/data/collect/ClientId;)V
    .locals 0
    .parameter "clientId"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiResponse;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    .line 62
    return-void
.end method


# virtual methods
.method public getClientId()Lcom/lewa/bi/common/data/collect/ClientId;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    return-object v0
.end method

.method public getConfigItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/ConfigItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->configItems:Ljava/util/List;

    return-object v0
.end method

.method public getConfigTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->configTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->isNew:Z

    return v0
.end method

.method public setConfigItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/ConfigItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/ConfigItem;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->configItems:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setConfigTimestamp(Ljava/lang/Long;)V
    .locals 0
    .parameter "configTimestamp"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->configTimestamp:Ljava/lang/Long;

    .line 52
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .parameter "isNew"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->isNew:Z

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterResponse ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->isNew:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->configItems:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configItems="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->configItems:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->configTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTimestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/api/collect/RegisterResponse;->configTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/bi/common/api/collect/RegisterResponse;->getSequenceId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method
