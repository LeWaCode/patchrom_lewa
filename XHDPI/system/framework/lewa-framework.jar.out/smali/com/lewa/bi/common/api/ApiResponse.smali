.class public abstract Lcom/lewa/bi/common/api/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/lewa/bi/common/data/WithSequenceId;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private sequenceId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSequenceId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/lewa/bi/common/api/ApiResponse;->sequenceId:J

    return-wide v0
.end method

.method public setSequenceId(J)V
    .locals 0
    .parameter "sequenceId"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/lewa/bi/common/api/ApiResponse;->sequenceId:J

    .line 30
    return-void
.end method
