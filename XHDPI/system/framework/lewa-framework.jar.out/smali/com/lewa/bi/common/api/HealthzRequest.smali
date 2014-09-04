.class public Lcom/lewa/bi/common/api/HealthzRequest;
.super Lcom/lewa/bi/common/api/ApiRequest;
.source "HealthzRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lewa/bi/common/api/ApiRequest;-><init>()V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/lewa/bi/common/api/HealthzRequest;->setTimestamp(J)V

    .line 18
    return-void
.end method
