.class public Lcom/lewa/bi/common/data/collect/ApkActivity;
.super Ljava/lang/Object;
.source "ApkActivity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/lewa/bi/common/data/WithId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/bi/common/data/collect/ApkActivity$Type;
    }
.end annotation

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
.field private id:Lcom/lewa/bi/common/data/collect/AppId;

.field private timestamp:J
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private type:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "ver"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/data/collect/AppId;Lcom/lewa/bi/common/data/collect/ApkActivity$Type;Ljava/lang/String;J)V
    .locals 0
    .parameter "id"
    .parameter "type"
    .parameter "version"
    .parameter "timestamp"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->id:Lcom/lewa/bi/common/data/collect/AppId;

    .line 61
    iput-object p2, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->type:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    .line 62
    iput-object p3, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->version:Ljava/lang/String;

    .line 63
    iput-wide p4, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->timestamp:J

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic getId()Lcom/lewa/bi/common/data/BaseId;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/collect/ApkActivity;->getId()Lcom/lewa/bi/common/data/collect/AppId;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/lewa/bi/common/data/collect/AppId;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->id:Lcom/lewa/bi/common/data/collect/AppId;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->timestamp:J

    return-wide v0
.end method

.method public getType()Lcom/lewa/bi/common/data/collect/ApkActivity$Type;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->type:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    invoke-static {p0}, Lcom/lewa/guava/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->id:Lcom/lewa/bi/common/data/collect/AppId;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->type:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "version"

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/ApkActivity;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
