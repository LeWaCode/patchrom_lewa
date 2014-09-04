.class abstract Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;
.super Lcom/lewa/guava/collect/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TransformedImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final source:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter "hashCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TD;I)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    .local p1, source:[Ljava/lang/Object;,"[TD;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSet;-><init>()V

    .line 396
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    .line 397
    iput p2, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->hashCode:I

    .line 398
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 1

    .prologue
    .line 442
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    iget v0, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 407
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 446
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;-><init>(Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 391
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 403
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 422
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet<TD;TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v2

    .line 427
    .local v2, size:I
    array-length v3, p1

    if-ge v3, v2, :cond_1

    .line 428
    invoke-static {p1, v2}, Lcom/lewa/guava/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 434
    :cond_0
    :goto_0
    move-object v1, p1

    .line 435
    .local v1, objectArray:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 436
    iget-object v3, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    .end local v0           #i:I
    .end local v1           #objectArray:[Ljava/lang/Object;
    :cond_1
    array-length v3, p1

    if-le v3, v2, :cond_0

    .line 430
    const/4 v3, 0x0

    aput-object v3, p1, v2

    goto :goto_0

    .line 438
    .restart local v0       #i:I
    .restart local v1       #objectArray:[Ljava/lang/Object;
    :cond_2
    return-object p1
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method
