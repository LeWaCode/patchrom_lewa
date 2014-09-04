.class public Lcom/lewa/bi/common/data/collect/AppEvent;
.super Ljava/lang/Object;
.source "AppEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private description:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private id:Lcom/lewa/bi/common/data/collect/AppId;

.field private properties:Ljava/util/Map;
    .annotation runtime Lcom/lewa/gson/annotations/SerializedName;
        value = "props"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/lewa/bi/common/data/collect/AppId;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->id:Lcom/lewa/bi/common/data/collect/AppId;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->timestamp:J

    return-wide v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->description:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->eventType:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setId(Lcom/lewa/bi/common/data/collect/AppId;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->id:Lcom/lewa/bi/common/data/collect/AppId;

    .line 70
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->properties:Ljava/util/Map;

    .line 84
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->timestamp:J

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-static {p0}, Lcom/lewa/guava/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->id:Lcom/lewa/bi/common/data/collect/AppId;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "desc"

    iget-object v2, p0, Lcom/lewa/bi/common/data/collect/AppEvent;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/lewa/guava/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
