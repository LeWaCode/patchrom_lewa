.class public Lcom/lewa/bi/common/api/collect/LoginResponse;
.super Lcom/lewa/bi/common/api/ApiResponse;
.source "LoginResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
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

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiResponse;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->success:Z

    return-void
.end method


# virtual methods
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
    .line 55
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->configItems:Ljava/util/List;

    return-object v0
.end method

.method public getConfigTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->configTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->success:Z

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
    .line 59
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/ConfigItem;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->configItems:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setConfigTimestamp(Ljava/lang/Long;)V
    .locals 0
    .parameter "configTimestamp"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->configTimestamp:Ljava/lang/Long;

    .line 40
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->success:Z

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginResponse ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lewa/bi/common/api/collect/LoginResponse;->getConfigItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configItems="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/bi/common/api/collect/LoginResponse;->getConfigItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->configTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTimestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->configTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lewa/bi/common/api/collect/LoginResponse;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/bi/common/api/collect/LoginResponse;->getSequenceId()J

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
.end method
