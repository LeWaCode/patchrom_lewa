.class final Lcom/lewa/guava/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/lewa/guava/base/Platform$1;

    invoke-direct {v0}, Lcom/lewa/guava/base/Platform$1;-><init>()V

    sput-object v0, Lcom/lewa/guava/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charBufferFromThreadLocal()[C
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/lewa/guava/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method static isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static precomputeCharMatcher(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;
    .locals 1
    .parameter "matcher"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/lewa/guava/base/CharMatcher;->precomputedInternal()Lcom/lewa/guava/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method
