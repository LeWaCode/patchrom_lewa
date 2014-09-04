.class final Lcom/lewa/guava/collect/EmptyImmutableMap;
.super Lcom/lewa/guava/collect/ImmutableMap;
.source "EmptyImmutableMap.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/ImmutableMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/lewa/guava/collect/EmptyImmutableMap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/lewa/guava/collect/EmptyImmutableMap;

    invoke-direct {v0}, Lcom/lewa/guava/collect/EmptyImmutableMap;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/EmptyImmutableMap;->INSTANCE:Lcom/lewa/guava/collect/EmptyImmutableMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSet;->of()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lewa/guava/collect/EmptyImmutableMap;->entrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 102
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 103
    check-cast v0, Ljava/util/Map;

    .line 104
    .local v0, that:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 106
    .end local v0           #that:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSet;->of()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lewa/guava/collect/EmptyImmutableMap;->keySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/lewa/guava/collect/EmptyImmutableMap;->INSTANCE:Lcom/lewa/guava/collect/EmptyImmutableMap;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "{}"

    return-object v0
.end method

.method public values()Lcom/lewa/guava/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/lewa/guava/collect/ImmutableCollection;->EMPTY_IMMUTABLE_COLLECTION:Lcom/lewa/guava/collect/ImmutableCollection;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lewa/guava/collect/EmptyImmutableMap;->values()Lcom/lewa/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
