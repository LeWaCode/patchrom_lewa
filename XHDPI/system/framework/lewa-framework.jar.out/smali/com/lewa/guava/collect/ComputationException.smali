.class public Lcom/lewa/guava/collect/ComputationException;
.super Ljava/lang/RuntimeException;
.source "ComputationException.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method
