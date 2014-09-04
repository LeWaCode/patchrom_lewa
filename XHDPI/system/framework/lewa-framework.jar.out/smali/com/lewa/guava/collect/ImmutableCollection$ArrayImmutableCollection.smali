.class Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;
.super Lcom/lewa/guava/collect/ImmutableCollection;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayImmutableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableCollection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection<TE;>;"
    .local p1, elements:[Ljava/lang/Object;,"[TE;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableCollection;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    .line 258
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 265
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection<TE;>;"
    const/4 v0, 0x0

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
    .line 269
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 252
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 261
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
