.class Lcom/lewa/guava/collect/ImmutableSet$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter "elements"

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSet$SerializedForm;->elements:[Ljava/lang/Object;

    .line 461
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSet$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSet;->of([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
