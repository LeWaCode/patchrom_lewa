.class public Lcom/lewa/bi/common/api/collect/RegisterRequest;
.super Lcom/lewa/bi/common/api/ApiRequest;
.source "RegisterRequest.java"

# interfaces
.implements Lcom/lewa/bi/common/data/Validatable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private device:Lcom/lewa/bi/common/data/collect/DeviceProfile;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "dev"
    .end annotation
.end field

.field private isNew:Z


# direct methods
.method public constructor <init>(Lcom/lewa/bi/common/data/collect/DeviceProfile;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/RegisterRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    .line 36
    invoke-virtual {p1}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->getId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->getId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lewa/bi/common/api/collect/RegisterRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public getDevice()Lcom/lewa/bi/common/data/collect/DeviceProfile;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/RegisterRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lewa/bi/common/api/collect/RegisterRequest;->isNew:Z

    return v0
.end method

.method public setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V
    .locals 1
    .parameter "clientId"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/lewa/bi/common/api/ApiRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 52
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/RegisterRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    invoke-virtual {v0, p1}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 53
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .parameter "isNew"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/lewa/bi/common/api/collect/RegisterRequest;->isNew:Z

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    invoke-static {p0}, Lcom/lewa/guava/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "device"

    iget-object v2, p0, Lcom/lewa/bi/common/api/collect/RegisterRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "device"

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/RegisterRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    invoke-static {v0, v1}, Lcom/lewa/bi/common/data/Asserts;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/RegisterRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    invoke-virtual {v0}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->validate()V

    .line 72
    const-string v0, "imei"

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/RegisterRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    invoke-virtual {v1}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lewa/bi/common/data/Asserts;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
