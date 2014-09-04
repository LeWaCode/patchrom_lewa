.class Lcom/lewa/guava/collect/ImmutableSortedMap$Values;
.super Lcom/lewa/guava/collect/ImmutableCollection;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSortedMap;
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
.field private final map:Lcom/lewa/guava/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Values<TV;>;"
    .local p1, map:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<*TV;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableCollection;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    .line 573
    return-void
.end method

.method static synthetic access$400(Lcom/lewa/guava/collect/ImmutableSortedMap$Values;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 591
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Values<TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->containsValue(Ljava/lang/Object;)Z

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
    .line 580
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Values<TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;-><init>(Lcom/lewa/guava/collect/ImmutableSortedMap$Values;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 567
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Values<TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 576
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Values<TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 595
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Values<TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm;-><init>(Lcom/lewa/guava/collect/ImmutableSortedMap;)V

    return-object v0
.end method
