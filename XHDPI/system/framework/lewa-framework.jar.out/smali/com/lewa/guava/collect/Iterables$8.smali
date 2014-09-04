.class final Lcom/lewa/guava/collect/Iterables$8;
.super Lcom/lewa/guava/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/Iterables$IterableWithToString",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$type:Ljava/lang/Class;

.field final synthetic val$unfiltered:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/lewa/guava/collect/Iterables$8;->val$unfiltered:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/lewa/guava/collect/Iterables$8;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/lewa/guava/collect/Iterables$IterableWithToString;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterables$8;->val$unfiltered:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Iterables$8;->val$type:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Iterators;->filter(Ljava/util/Iterator;Ljava/lang/Class;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
