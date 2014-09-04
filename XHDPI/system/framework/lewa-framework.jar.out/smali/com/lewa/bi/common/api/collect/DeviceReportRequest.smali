.class public Lcom/lewa/bi/common/api/collect/DeviceReportRequest;
.super Lcom/lewa/bi/common/api/ApiRequest;
.source "DeviceReportRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private apkActivities:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "apk"
    .end annotation

    .annotation runtime Lcom/lewa/javax/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/ApkActivity;",
            ">;"
        }
    .end annotation
.end field

.field private appSnapshot:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "apps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appTrafficInfo:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "appn"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppTrafficInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appUsages:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "appu"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppUsage;",
            ">;"
        }
    .end annotation
.end field

.field private batteryUsages:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "bu"
    .end annotation

    .annotation runtime Lcom/lewa/javax/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/BatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field private device:Lcom/lewa/bi/common/data/collect/DeviceProfile;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "dev"
    .end annotation
.end field

.field private locationHistories:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "geo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/LocationHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/data/collect/ClientId;)V
    .locals 0
    .parameter "clientId"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getApkActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/ApkActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->apkActivities:Ljava/util/List;

    return-object v0
.end method

.method public getAppSnapshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->appSnapshot:Ljava/util/List;

    return-object v0
.end method

.method public getAppTrafficInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppTrafficInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->appTrafficInfo:Ljava/util/List;

    return-object v0
.end method

.method public getAppUsages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppUsage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->appUsages:Ljava/util/List;

    return-object v0
.end method

.method public getBatteryUsages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/BatteryUsage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->batteryUsages:Ljava/util/List;

    return-object v0
.end method

.method public getDevice()Lcom/lewa/bi/common/data/collect/DeviceProfile;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    return-object v0
.end method

.method public getLocationHistories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/LocationHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->locationHistories:Ljava/util/List;

    return-object v0
.end method

.method public setApkActivities(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/ApkActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, apkActivities:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/ApkActivity;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->apkActivities:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setAppSnapshot(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, appSnapshot:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppInfo;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->appSnapshot:Ljava/util/List;

    .line 107
    return-void
.end method

.method public setAppTrafficInfo(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppTrafficInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, appTrafficInfo:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppTrafficInfo;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->appTrafficInfo:Ljava/util/List;

    .line 111
    return-void
.end method

.method public setAppUsages(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppUsage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, appUsages:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppUsage;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->appUsages:Ljava/util/List;

    .line 115
    return-void
.end method

.method public setBatteryUsages(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/BatteryUsage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, batteryUsages:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/BatteryUsage;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->batteryUsages:Ljava/util/List;

    .line 119
    return-void
.end method

.method public setDevice(Lcom/lewa/bi/common/data/collect/DeviceProfile;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    .line 123
    return-void
.end method

.method public setLocationHistories(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/LocationHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, locationHistories:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/LocationHistory;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->locationHistories:Ljava/util/List;

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceReportRequest [batteryUsages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->batteryUsages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apkActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->apkActivities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appUsages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->appUsages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationHistories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->locationHistories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->appSnapshot:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appTrafficInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->appTrafficInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->device:Lcom/lewa/bi/common/data/collect/DeviceProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
