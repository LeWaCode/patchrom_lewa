.class final Lcom/lewa/guava/collect/Iterators$12;
.super Lcom/lewa/guava/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/lewa/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/lewa/guava/collect/Iterators$12;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lewa/guava/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 924
    iget-boolean v0, p0, Lcom/lewa/guava/collect/Iterators$12;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/lewa/guava/collect/Iterators$12;->done:Z

    if-eqz v0, :cond_0

    .line 928
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 930
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lewa/guava/collect/Iterators$12;->done:Z

    .line 931
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterators$12;->val$value:Ljava/lang/Object;

    return-object v0
.end method
