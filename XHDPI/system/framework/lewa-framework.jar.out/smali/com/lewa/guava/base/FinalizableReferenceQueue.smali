.class public Lcom/lewa/guava/base/FinalizableReferenceQueue;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/base/FinalizableReferenceQueue$DirectLoader;,
        Lcom/lewa/guava/base/FinalizableReferenceQueue$DecoupledLoader;,
        Lcom/lewa/guava/base/FinalizableReferenceQueue$SystemLoader;,
        Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;
    }
.end annotation


# static fields
.field private static final FINALIZER_CLASS_NAME:Ljava/lang/String; = "com.lewa.common.base.internal.Finalizer"

.field private static final logger:Ljava/util/logging/Logger;

.field private static final startFinalizer:Ljava/lang/reflect/Method;


# instance fields
.field final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final threadStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 124
    const-class v1, Lcom/lewa/guava/base/FinalizableReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/lewa/guava/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    .line 133
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;

    const/4 v2, 0x0

    new-instance v3, Lcom/lewa/guava/base/FinalizableReferenceQueue$SystemLoader;

    invoke-direct {v3}, Lcom/lewa/guava/base/FinalizableReferenceQueue$SystemLoader;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/lewa/guava/base/FinalizableReferenceQueue$DecoupledLoader;

    invoke-direct {v3}, Lcom/lewa/guava/base/FinalizableReferenceQueue$DecoupledLoader;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/lewa/guava/base/FinalizableReferenceQueue$DirectLoader;

    invoke-direct {v3}, Lcom/lewa/guava/base/FinalizableReferenceQueue$DirectLoader;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/base/FinalizableReferenceQueue;->loadFinalizer([Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 135
    .local v0, finalizer:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/lewa/guava/base/FinalizableReferenceQueue;->getStartFinalizer(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/lewa/guava/base/FinalizableReferenceQueue;->startFinalizer:Ljava/lang/reflect/Method;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v3, 0x0

    .line 157
    .local v3, threadStarted:Z
    :try_start_0
    sget-object v4, Lcom/lewa/guava/base/FinalizableReferenceQueue;->startFinalizer:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-class v8, Lcom/lewa/guava/base/FinalizableReference;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .local v1, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 170
    :goto_0
    iput-object v1, p0, Lcom/lewa/guava/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 171
    iput-boolean v3, p0, Lcom/lewa/guava/base/FinalizableReferenceQueue;->threadStarted:Z

    .line 172
    return-void

    .line 160
    .end local v1           #queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 163
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 164
    .local v2, t:Ljava/lang/Throwable;
    sget-object v4, Lcom/lewa/guava/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created."

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .restart local v1       #queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/lewa/guava/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static getStartFinalizer(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, finalizer:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "startFinalizer"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static varargs loadFinalizer([Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;)Ljava/lang/Class;
    .locals 6
    .parameter "loaders"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, arr$:[Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 208
    .local v4, loader:Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;
    invoke-interface {v4}, Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;->loadFinalizer()Ljava/lang/Class;

    move-result-object v1

    .line 209
    .local v1, finalizer:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 210
    return-object v1

    .line 207
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v1           #finalizer:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #loader:Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method


# virtual methods
.method cleanUp()V
    .locals 5

    .prologue
    .line 181
    iget-boolean v2, p0, Lcom/lewa/guava/base/FinalizableReferenceQueue;->threadStarted:Z

    if-eqz v2, :cond_1

    .line 198
    :cond_0
    return-void

    .line 186
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/lewa/guava/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .local v0, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<*>;"
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 193
    :try_start_0
    check-cast v0, Lcom/lewa/guava/base/FinalizableReference;

    .end local v0           #reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<*>;"
    invoke-interface {v0}, Lcom/lewa/guava/base/FinalizableReference;->finalizeReferent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Lcom/lewa/guava/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Error cleaning up after reference."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
