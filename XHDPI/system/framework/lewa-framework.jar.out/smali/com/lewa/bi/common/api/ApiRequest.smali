.class public abstract Lcom/lewa/bi/common/api/ApiRequest;
.super Lcom/lewa/bi/common/data/WithSequenceIdImpl;
.source "ApiRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private clientId:Lcom/lewa/bi/common/data/collect/ClientId;

.field private clientLocation:Lcom/lewa/bi/common/api/ClientLocation;

.field private serverTimestamp:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lewa/bi/common/data/WithSequenceIdImpl;-><init>()V

    .line 29
    invoke-static {}, Lcom/lewa/bi/common/util/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/bi/common/api/ApiRequest;->timestamp:J

    return-void
.end method


# virtual methods
.method public getClientId()Lcom/lewa/bi/common/data/collect/ClientId;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiRequest;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    return-object v0
.end method

.method public getClientLocation()Lcom/lewa/bi/common/api/ClientLocation;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiRequest;->clientLocation:Lcom/lewa/bi/common/api/ClientLocation;

    return-object v0
.end method

.method public getServerTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiRequest;->serverTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/lewa/bi/common/api/ApiRequest;->timestamp:J

    return-wide v0
.end method

.method public setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V
    .locals 0
    .parameter "clientId"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiRequest;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    .line 49
    return-void
.end method

.method public setClientIp(Ljava/lang/String;)V
    .locals 1
    .parameter "clientIp"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiRequest;->clientLocation:Lcom/lewa/bi/common/api/ClientLocation;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/lewa/bi/common/api/ClientLocation;

    invoke-direct {v0}, Lcom/lewa/bi/common/api/ClientLocation;-><init>()V

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiRequest;->clientLocation:Lcom/lewa/bi/common/api/ClientLocation;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiRequest;->clientLocation:Lcom/lewa/bi/common/api/ClientLocation;

    invoke-virtual {v0, p1}, Lcom/lewa/bi/common/api/ClientLocation;->setIp(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setClientLocation(Lcom/lewa/bi/common/api/ClientLocation;)V
    .locals 0
    .parameter "clientLocation"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiRequest;->clientLocation:Lcom/lewa/bi/common/api/ClientLocation;

    .line 64
    return-void
.end method

.method public setServerTimestamp(Ljava/lang/String;)V
    .locals 0
    .parameter "serverTimestamp"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiRequest;->serverTimestamp:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/lewa/bi/common/api/ApiRequest;->timestamp:J

    .line 41
    return-void
.end method
