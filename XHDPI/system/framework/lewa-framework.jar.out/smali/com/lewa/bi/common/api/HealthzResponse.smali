.class public Lcom/lewa/bi/common/api/HealthzResponse;
.super Lcom/lewa/bi/common/api/ApiResponse;
.source "HealthzResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private clientTimestamp:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private requestTimestamp:Ljava/lang/String;

.field private responseTimestamp:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private serverVersion:Ljava/lang/String;

.field private startupTime:Ljava/lang/String;

.field private status:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiResponse;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverVersion"
    .parameter "startupTime"
    .parameter "status"
    .parameter "clientTimestamp"
    .parameter "requestTimestamp"
    .parameter "responseTimestamp"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiResponse;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/lewa/bi/common/api/HealthzResponse;->serverVersion:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/lewa/bi/common/api/HealthzResponse;->startupTime:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/lewa/bi/common/api/HealthzResponse;->status:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    .line 85
    iput-object p4, p0, Lcom/lewa/bi/common/api/HealthzResponse;->clientTimestamp:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/lewa/bi/common/api/HealthzResponse;->requestTimestamp:Ljava/lang/String;

    .line 87
    iput-object p6, p0, Lcom/lewa/bi/common/api/HealthzResponse;->responseTimestamp:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public getClientTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lewa/bi/common/api/HealthzResponse;->clientTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lewa/bi/common/api/HealthzResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lewa/bi/common/api/HealthzResponse;->requestTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lewa/bi/common/api/HealthzResponse;->responseTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lewa/bi/common/api/HealthzResponse;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lewa/bi/common/api/HealthzResponse;->serverVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStartupTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lewa/bi/common/api/HealthzResponse;->startupTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lewa/bi/common/api/HealthzResponse;->status:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lewa/bi/common/api/HealthzResponse;->id:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .parameter "serverName"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lewa/bi/common/api/HealthzResponse;->serverName:Ljava/lang/String;

    .line 128
    return-void
.end method
