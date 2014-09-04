.class final Lcom/lewa/guava/collect/UsingToStringOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "UsingToStringOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/Ordering",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/lewa/guava/collect/UsingToStringOrdering;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/lewa/guava/collect/UsingToStringOrdering;

    invoke-direct {v0}, Lcom/lewa/guava/collect/UsingToStringOrdering;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/UsingToStringOrdering;->INSTANCE:Lcom/lewa/guava/collect/UsingToStringOrdering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/lewa/guava/collect/UsingToStringOrdering;->INSTANCE:Lcom/lewa/guava/collect/UsingToStringOrdering;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "Ordering.usingToString()"

    return-object v0
.end method
