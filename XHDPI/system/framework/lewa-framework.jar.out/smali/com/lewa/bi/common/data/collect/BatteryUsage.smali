.class public Lcom/lewa/bi/common/data/collect/BatteryUsage;
.super Ljava/lang/Object;
.source "BatteryUsage.java"

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
.field private id:Lcom/lewa/bi/common/data/collect/AppId;

.field private percentage:I
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "pct"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/data/collect/AppId;I)V
    .locals 0
    .parameter "appId"
    .parameter "percentage"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/BatteryUsage;->id:Lcom/lewa/bi/common/data/collect/AppId;

    .line 35
    iput p2, p0, Lcom/lewa/bi/common/data/collect/BatteryUsage;->percentage:I

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic getId()Lcom/lewa/bi/common/data/BaseId;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/lewa/bi/common/data/collect/BatteryUsage;->getId()Lcom/lewa/bi/common/data/collect/AppId;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/lewa/bi/common/data/collect/AppId;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/BatteryUsage;->id:Lcom/lewa/bi/common/data/collect/AppId;

    return-object v0
.end method

.method public getPercentage()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/lewa/bi/common/data/collect/BatteryUsage;->percentage:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    invoke-static {p0}, Lcom/lewa/guava/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/BatteryUsage;->id:Lcom/lewa/bi/common/data/collect/AppId;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "percent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/lewa/bi/common/data/collect/BatteryUsage;->percentage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
