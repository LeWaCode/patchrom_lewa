.class public Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/yellowsdkapi/http/ThreadPoolManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;-><init>()V

    return-void
.end method

.method private a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private a(Lcom/yulore/yellowsdkapi/b/a;)V
    .locals 2

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->a:Ljava/lang/String;

    const-string v1, "ExecutorService is null or is shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->a:Ljava/lang/String;

    const-string v1, "ExecutorService is null or is shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;
    .locals 1

    invoke-static {}, Lcom/yulore/yellowsdkapi/http/ThreadPoolManager$a;->a()Lcom/yulore/yellowsdkapi/http/ThreadPoolManager;

    move-result-object v0

    return-object v0
.end method
