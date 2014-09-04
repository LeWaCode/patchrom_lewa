.class final Lcom/lewa/guava/collect/RegularImmutableSet;
.super Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;
.source "RegularImmutableSet.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient hashCode:I

.field private final transient mask:I

.field final transient table:[Ljava/lang/Object;
    .annotation build Lcom/lewa/guava/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0
    .parameter "elements"
    .parameter "hashCode"
    .parameter "table"
    .parameter "mask"

    .prologue
    .line 71
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableSet;,"Lcom/lewa/guava/collect/RegularImmutableSet<TE;>;"
    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 72
    iput-object p3, p0, Lcom/lewa/guava/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 73
    iput p4, p0, Lcom/lewa/guava/collect/RegularImmutableSet;->mask:I

    .line 74
    iput p2, p0, Lcom/lewa/guava/collect/RegularImmutableSet;->hashCode:I

    .line 75
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "target"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableSet;,"Lcom/lewa/guava/collect/RegularImmutableSet<TE;>;"
    const/4 v2, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/lewa/guava/collect/Hashing;->smear(I)I

    move-result v1

    .line 82
    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/lewa/guava/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    iget v4, p0, Lcom/lewa/guava/collect/RegularImmutableSet;->mask:I

    and-int/2addr v4, v1

    aget-object v0, v3, v4

    .line 83
    .local v0, candidate:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const/4 v2, 0x1

    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableSet;,"Lcom/lewa/guava/collect/RegularImmutableSet<TE;>;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableSet;->hashCode:I

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 97
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableSet;,"Lcom/lewa/guava/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method
