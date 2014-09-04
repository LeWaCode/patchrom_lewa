.class public Lcom/lewa/bi/common/data/collect/FirstAppInfo;
.super Ljava/lang/Object;
.source "FirstAppInfo.java"

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
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private id:Lcom/lewa/bi/common/data/collect/AppId;

.field private md5:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "md5"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "ver"
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
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/data/collect/AppId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "version"
    .parameter "versionName"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->id:Lcom/lewa/bi/common/data/collect/AppId;

    .line 48
    iput-object p2, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->version:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->versionName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/data/collect/AppId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "version"
    .parameter "versionName"
    .parameter "md5"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/lewa/bi/common/data/collect/FirstAppInfo;-><init>(Lcom/lewa/bi/common/data/collect/AppId;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p4, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->md5:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getId()Lcom/lewa/bi/common/data/BaseId;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->getId()Lcom/lewa/bi/common/data/collect/AppId;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/lewa/bi/common/data/collect/AppId;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->id:Lcom/lewa/bi/common/data/collect/AppId;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->appName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .parameter "md5"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->md5:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->id:Lcom/lewa/bi/common/data/collect/AppId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
