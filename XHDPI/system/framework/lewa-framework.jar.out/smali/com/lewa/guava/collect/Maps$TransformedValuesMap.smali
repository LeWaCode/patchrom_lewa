.class Lcom/lewa/guava/collect/Maps$TransformedValuesMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedValuesMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV2;>;"
    }
.end annotation


# instance fields
.field entrySet:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/Maps$TransformedValuesMap",
            "<TK;TV1;TV2;>.EntrySet;"
        }
    .end annotation
.end field

.field final fromMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV1;>;"
        }
    .end annotation
.end field

.field final function:Lcom/lewa/guava/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/base/Function",
            "<-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/lewa/guava/base/Function;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    .local p1, fromMap:Ljava/util/Map;,"Ljava/util/Map<TK;TV1;>;"
    .local p2, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TV1;TV2;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 779
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    .line 780
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Function;

    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->function:Lcom/lewa/guava/base/Function;

    .line 781
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 804
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 805
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 788
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->entrySet:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;

    .line 811
    .local v0, result:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    if-nez v0, :cond_0

    .line 812
    new-instance v0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;

    .end local v0           #result:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;-><init>(Lcom/lewa/guava/collect/Maps$TransformedValuesMap;)V

    .restart local v0       #result:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->entrySet:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;

    .line 814
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 793
    .local v0, value:Ljava/lang/Object;,"TV1;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->function:Lcom/lewa/guava/base/Function;

    invoke-interface {v1, v0}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 798
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->function:Lcom/lewa/guava/base/Function;

    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 784
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
