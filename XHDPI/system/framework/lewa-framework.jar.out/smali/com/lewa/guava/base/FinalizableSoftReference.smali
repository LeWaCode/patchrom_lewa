.class public abstract Lcom/lewa/guava/base/FinalizableSoftReference;
.super Ljava/lang/ref/SoftReference;
.source "FinalizableSoftReference.java"

# interfaces
.implements Lcom/lewa/guava/base/FinalizableReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TT;>;",
        "Lcom/lewa/guava/base/FinalizableReference;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/lewa/guava/base/FinalizableReferenceQueue;)V
    .locals 1
    .parameter
    .parameter "queue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/lewa/guava/base/FinalizableReferenceQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/base/FinalizableSoftReference;,"Lcom/lewa/guava/base/FinalizableSoftReference<TT;>;"
    .local p1, referent:Ljava/lang/Object;,"TT;"
    iget-object v0, p2, Lcom/lewa/guava/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 73
    invoke-virtual {p2}, Lcom/lewa/guava/base/FinalizableReferenceQueue;->cleanUp()V

    .line 74
    return-void
.end method
