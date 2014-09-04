.class public Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;
.super Ljava/lang/Object;
.source "BiConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/bi/common/data/collect/BiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendConfig"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private eventType:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private frequencyType:Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "freq"
    .end annotation
.end field

.field private sendNetwork:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "net"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequencyType()Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;->frequencyType:Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;

    return-object v0
.end method

.method public getSendNetwork()Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;->sendNetwork:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    return-object v0
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;->eventType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setFrequencyType(Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;)V
    .locals 0
    .parameter "frequencyType"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;->frequencyType:Lcom/lewa/bi/common/data/collect/BiConfig$FrequencyType;

    .line 62
    return-void
.end method

.method public setSendNetwork(Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;)V
    .locals 0
    .parameter "sendNetwork"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/BiConfig$SendConfig;->sendNetwork:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    .line 66
    return-void
.end method
