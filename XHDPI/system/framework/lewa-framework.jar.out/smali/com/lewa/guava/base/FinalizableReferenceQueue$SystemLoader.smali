.class Lcom/lewa/guava/base/FinalizableReferenceQueue$SystemLoader;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Lcom/lewa/guava/base/FinalizableReferenceQueue$FinalizerLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemLoader"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinalizer()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 239
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 244
    .local v1, systemLoader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 246
    :try_start_1
    const-string v3, "com.lewa.common.base.internal.Finalizer"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 252
    .end local v1           #systemLoader:Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return-object v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {}, Lcom/lewa/guava/base/FinalizableReferenceQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "Not allowed to access system class loader."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #systemLoader:Ljava/lang/ClassLoader;
    :catch_1
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method
