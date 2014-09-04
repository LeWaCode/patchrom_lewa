.class public Lcom/lewa/bi/common/data/collect/AppUsage;
.super Ljava/lang/Object;
.source "AppUsage.java"

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
.field private duration:J
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "dur"
    .end annotation
.end field

.field private id:Lcom/lewa/bi/common/data/collect/AppId;

.field private startTime:J
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/data/collect/AppId;JJ)V
    .locals 0
    .parameter "id"
    .parameter "startTime"
    .parameter "duration"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppUsage;->id:Lcom/lewa/bi/common/data/collect/AppId;

    .line 37
    iput-wide p2, p0, Lcom/lewa/bi/common/data/collect/AppUsage;->startTime:J

    .line 38
    iput-wide p4, p0, Lcom/lewa/bi/common/data/collect/AppUsage;->duration:J

    .line 39
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/AppUsage;->duration:J

    return-wide v0
.end method

.method public bridge synthetic getId()Lcom/lewa/bi/common/data/BaseId;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/collect/AppUsage;->getId()Lcom/lewa/bi/common/data/collect/AppId;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/lewa/bi/common/data/collect/AppId;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppUsage;->id:Lcom/lewa/bi/common/data/collect/AppId;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/AppUsage;->startTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    invoke-static {p0}, Lcom/lewa/guava/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/AppUsage;->id:Lcom/lewa/bi/common/data/collect/AppId;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "start"

    iget-wide v2, p0, Lcom/lewa/bi/common/data/collect/AppUsage;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/lewa/bi/common/data/collect/AppUsage;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
