.class Lcom/lewa/guava/collect/Ordering$ArbitraryOrderingHolder;
.super Ljava/lang/Object;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArbitraryOrderingHolder"
.end annotation


# static fields
.field static final ARBITRARY_ORDERING:Lcom/lewa/guava/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;

    invoke-direct {v0}, Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/Ordering$ArbitraryOrderingHolder;->ARBITRARY_ORDERING:Lcom/lewa/guava/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
