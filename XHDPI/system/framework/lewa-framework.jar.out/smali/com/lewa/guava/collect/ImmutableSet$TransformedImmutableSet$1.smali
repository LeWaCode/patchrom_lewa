.class Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;
.super Lcom/lewa/guava/collect/AbstractIterator;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/AbstractIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;)V
    .locals 1
    .parameter

    .prologue
    .line 411
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;

    invoke-direct {p0}, Lcom/lewa/guava/collect/AbstractIterator;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;->index:I

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;,"Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet.1;"
    iget v0, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;->index:I

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, v1, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, v1, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    iget v2, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
