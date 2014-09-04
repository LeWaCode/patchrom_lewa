.class Lcom/lewa/guava/collect/MapMaker$QueueHolder;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueHolder"
.end annotation


# static fields
.field static final queue:Lcom/lewa/guava/base/FinalizableReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 869
    new-instance v0, Lcom/lewa/guava/base/FinalizableReferenceQueue;

    invoke-direct {v0}, Lcom/lewa/guava/base/FinalizableReferenceQueue;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/MapMaker$QueueHolder;->queue:Lcom/lewa/guava/base/FinalizableReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
