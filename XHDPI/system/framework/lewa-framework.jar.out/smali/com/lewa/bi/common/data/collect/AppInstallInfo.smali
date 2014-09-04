.class public Lcom/lewa/bi/common/data/collect/AppInstallInfo;
.super Ljava/lang/Object;
.source "AppInstallInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private clientTime:J
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "ctime"
    .end annotation
.end field

.field private event:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "event"
    .end annotation
.end field

.field private netType:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "ntype"
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "pname"
    .end annotation
.end field

.field private packageSzie:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "psize"
    .end annotation
.end field

.field private srcPath:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "spath"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "vname"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "eventName"
    .parameter "packageName"
    .parameter "versionName"
    .parameter "appName"
    .parameter "srcPath"
    .parameter "netType"
    .parameter "packageSize"
    .parameter "status"
    .parameter "clientTime"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->event:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->packageName:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->versionName:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->appName:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->srcPath:Ljava/lang/String;

    .line 119
    iput-object p6, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->netType:Ljava/lang/String;

    .line 120
    iput-object p7, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->packageSzie:Ljava/lang/String;

    .line 121
    iput-object p8, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->status:Ljava/lang/String;

    .line 122
    iput-wide p9, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->clientTime:J

    .line 123
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->clientTime:J

    return-wide v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->netType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSzie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->packageSzie:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->srcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->appName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setClientTime(J)V
    .locals 0
    .parameter "clientTime"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->clientTime:J

    .line 106
    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->event:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setNetType(Ljava/lang/String;)V
    .locals 0
    .parameter "netType"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->netType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->packageName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPackageSzie(Ljava/lang/String;)V
    .locals 0
    .parameter "packageSzie"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->packageSzie:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .locals 0
    .parameter "srcPath"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->srcPath:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->status:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->versionName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo [packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->srcPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->packageSzie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lewa/bi/common/data/collect/AppInstallInfo;->clientTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
