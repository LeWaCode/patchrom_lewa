.class public Lcom/lewa/bi/common/api/collect/AppInstallRequest;
.super Lcom/lewa/bi/common/api/ApiRequest;
.source "AppInstallRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appInstalls:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "appis"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppInstallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private channel:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "chl"
    .end annotation
.end field

.field private hardwareModel:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "mod"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/data/collect/ClientId;)V
    .locals 0
    .parameter "clientId"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getAppInstalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppInstallInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->appInstalls:Ljava/util/List;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->hardwareModel:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInstalls(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppInstallInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, appInstalls:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppInstallInfo;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->appInstalls:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->channel:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setHardwareModel(Ljava/lang/String;)V
    .locals 0
    .parameter "hardwareModel"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->hardwareModel:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceReportRequest [appSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->appInstalls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
