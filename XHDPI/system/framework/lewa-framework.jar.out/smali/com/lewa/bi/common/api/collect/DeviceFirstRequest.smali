.class public Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;
.super Lcom/lewa/bi/common/api/ApiRequest;
.source "DeviceFirstRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appSnapshot:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "apps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/FirstAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/data/collect/ClientId;)V
    .locals 0
    .parameter "clientId"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getAppSnapshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/FirstAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;->appSnapshot:Ljava/util/List;

    return-object v0
.end method

.method public setAppSnapshot(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/FirstAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, appSnapshot:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/FirstAppInfo;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;->appSnapshot:Ljava/util/List;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceReportRequest [appSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;->appSnapshot:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
