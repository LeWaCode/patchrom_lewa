.class public Lcom/lewa/bi/common/data/MultiColumn;
.super Ljava/lang/Object;
.source "MultiColumn.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private properties:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/lewa/guava/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    return-void
.end method


# virtual methods
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
    .line 26
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public removeProperty(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    .line 40
    :cond_0
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 1
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
    .line 43
    .local p1, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/lewa/guava/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/lewa/guava/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lewa/bi/common/data/MultiColumn;->properties:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
