.class Lcom/lewa/guava/collect/RegularImmutableMap$Values;
.super Lcom/lewa/guava/collect/ImmutableCollection;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final map:Lcom/lewa/guava/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/RegularImmutableMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/RegularImmutableMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/RegularImmutableMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap$Values;,"Lcom/lewa/guava/collect/RegularImmutableMap$Values<TV;>;"
    .local p1, map:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<*TV;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableCollection;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/lewa/guava/collect/RegularImmutableMap$Values;->map:Lcom/lewa/guava/collect/RegularImmutableMap;

    .line 214
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 232
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap$Values;,"Lcom/lewa/guava/collect/RegularImmutableMap$Values<TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap$Values;->map:Lcom/lewa/guava/collect/RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/RegularImmutableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap$Values;,"Lcom/lewa/guava/collect/RegularImmutableMap$Values<TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableMap$Values$1;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/RegularImmutableMap$Values$1;-><init>(Lcom/lewa/guava/collect/RegularImmutableMap$Values;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 208
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap$Values;,"Lcom/lewa/guava/collect/RegularImmutableMap$Values<TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/RegularImmutableMap$Values;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 217
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap$Values;,"Lcom/lewa/guava/collect/RegularImmutableMap$Values<TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap$Values;->map:Lcom/lewa/guava/collect/RegularImmutableMap;

    #getter for: Lcom/lewa/guava/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/lewa/guava/collect/RegularImmutableMap;->access$000(Lcom/lewa/guava/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
