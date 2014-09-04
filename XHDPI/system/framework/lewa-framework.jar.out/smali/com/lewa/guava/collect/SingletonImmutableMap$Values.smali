.class Lcom/lewa/guava/collect/SingletonImmutableMap$Values;
.super Lcom/lewa/guava/collect/ImmutableCollection;
.source "SingletonImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/SingletonImmutableMap;
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
.field final singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap$Values;,"Lcom/lewa/guava/collect/SingletonImmutableMap$Values<TV;>;"
    .local p1, singleValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableCollection;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/lewa/guava/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    .line 137
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 140
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap$Values;,"Lcom/lewa/guava/collect/SingletonImmutableMap$Values<TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 144
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap$Values;,"Lcom/lewa/guava/collect/SingletonImmutableMap$Values<TV;>;"
    const/4 v0, 0x0

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
    .line 152
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap$Values;,"Lcom/lewa/guava/collect/SingletonImmutableMap$Values<TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap$Values;,"Lcom/lewa/guava/collect/SingletonImmutableMap$Values<TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/SingletonImmutableMap$Values;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 148
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap$Values;,"Lcom/lewa/guava/collect/SingletonImmutableMap$Values<TV;>;"
    const/4 v0, 0x1

    return v0
.end method
