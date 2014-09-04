.class public Lcom/lewa/bi/common/data/collect/BiConfig;
.super Ljava/lang/Object;
.source "BiConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;,
        Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;,
        Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appConfigs:Ljava/util/Map;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "apps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultFrequencyType:Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "freq"
    .end annotation
.end field

.field private defaultSendNetwork:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "net"
    .end annotation
.end field

.field private osConfigs:Ljava/util/List;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "os"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public getAppConfigs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/BiConfig;->appConfigs:Ljava/util/Map;

    return-object v0
.end method

.method public getDefaultFrequencyType()Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/BiConfig;->defaultFrequencyType:Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;

    return-object v0
.end method

.method public getDefaultSendNetwork()Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/BiConfig;->defaultSendNetwork:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    return-object v0
.end method

.method public getOsConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/BiConfig;->osConfigs:Ljava/util/List;

    return-object v0
.end method

.method public setAppConfigs(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, appConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;>;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/BiConfig;->appConfigs:Ljava/util/Map;

    .line 112
    return-void
.end method

.method public setDefaultFrequencyType(Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;)V
    .locals 0
    .parameter "defaultFrequencyType"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/BiConfig;->defaultFrequencyType:Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;

    .line 116
    return-void
.end method

.method public setDefaultSendNetwork(Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;)V
    .locals 0
    .parameter "defaultSendNetwork"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/BiConfig;->defaultSendNetwork:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    .line 124
    return-void
.end method

.method public setOsConfigs(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, osConfigs:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/BiConfig;->osConfigs:Ljava/util/List;

    .line 120
    return-void
.end method
