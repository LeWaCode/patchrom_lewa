.class public Lcom/lewa/bi/common/data/collect/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/lewa/bi/common/data/WithId;
.implements Lcom/lewa/bi/common/data/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/lewa/bi/common/data/WithId",
        "<",
        "Lcom/lewa/bi/common/data/collect/ClientId;",
        ">;",
        "Lcom/lewa/bi/common/data/Validatable;"
    }
.end annotation


# static fields
.field private static final JOINER:Lcom/lewa/guava/base/Joiner; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private androidVersion:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "av"
    .end annotation
.end field

.field private carrier:Ljava/lang/String;

.field private carrier2:Ljava/lang/String;

.field private channel:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "chl"
    .end annotation
.end field

.field private channelType:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "cht"
    .end annotation
.end field

.field private deviceId:Lcom/lewa/bi/common/data/collect/DeviceId;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "devId"
    .end annotation
.end field

.field private deviceUuid:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
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

.field private id:Lcom/lewa/bi/common/data/collect/ClientId;

.field private imei:Ljava/lang/String;

.field private imei2:Ljava/lang/String;

.field private lewaAccount:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "lwa"
    .end annotation
.end field

.field private lewaosVersion:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "osv"
    .end annotation
.end field

.field private locale:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field private macAddress:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "mac"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/lewa/guava/base/Joiner;->on(C)Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lewa/guava/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->JOINER:Lcom/lewa/guava/base/Joiner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method


# virtual methods
.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->carrier2:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->channelType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Lcom/lewa/bi/common/data/collect/DeviceId;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceId:Lcom/lewa/bi/common/data/collect/DeviceId;

    return-object v0
.end method

.method public getDeviceUuid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->hardwareModel:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getId()Lcom/lewa/bi/common/data/BaseId;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->getId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/lewa/bi/common/data/collect/ClientId;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->id:Lcom/lewa/bi/common/data/collect/ClientId;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImei2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei2:Ljava/lang/String;

    return-object v0
.end method

.method public getLewaAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->lewaAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getLewaosVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->lewaosVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei2:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->JOINER:Lcom/lewa/guava/base/Joiner;

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->macAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei2:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->hardwareModel:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/guava/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAndroidVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "androidVersion"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->androidVersion:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0
    .parameter "carrier"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->carrier:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setCarrier2(Ljava/lang/String;)V
    .locals 0
    .parameter "carrier2"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->carrier2:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->channel:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setChannelType(Ljava/lang/String;)V
    .locals 0
    .parameter "channelType"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->channelType:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDeviceId(Lcom/lewa/bi/common/data/collect/DeviceId;)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceId:Lcom/lewa/bi/common/data/collect/DeviceId;

    .line 265
    return-void
.end method

.method public setDeviceUuid(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceUuid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceUuid:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "firmwareVersion"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->firmwareVersion:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setHardwareModel(Ljava/lang/String;)V
    .locals 0
    .parameter "hardwareModel"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->hardwareModel:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setId(Lcom/lewa/bi/common/data/collect/ClientId;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->id:Lcom/lewa/bi/common/data/collect/ClientId;

    .line 147
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setImei2(Ljava/lang/String;)V
    .locals 0
    .parameter "imei2"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei2:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setLewaAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "lewaAccount"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->lewaAccount:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setLewaosVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "lewaosVersion"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->lewaosVersion:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->locale:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "macAddress"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->macAddress:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public toCsv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceId:Lcom/lewa/bi/common/data/collect/DeviceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->id:Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->hardwareModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->lewaAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->carrier2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->androidVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->lewaosVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceProfile [deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceId:Lcom/lewa/bi/common/data/collect/DeviceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->id:Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", macAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firmwareVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hardwareModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->hardwareModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imei2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lewaAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->lewaAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carrier2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->carrier2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", androidVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->androidVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lewaosVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->lewaosVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->channelType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iput-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->macAddress:Ljava/lang/String;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iput-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei:Ljava/lang/String;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei2:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iput-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->imei2:Ljava/lang/String;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iput-object v1, p0, Lcom/lewa/bi/common/data/collect/DeviceProfile;->deviceUuid:Ljava/lang/String;

    .line 295
    :cond_3
    return-void
.end method
