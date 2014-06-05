.class public abstract Lcom/tencent/qqpim/sdk/libs/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;

.field private b:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/c;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/c;->a:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/a/c;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/libs/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public abstract a(Lcom/tencent/qqpim/sdk/libs/a/a;)Z
.end method

.method protected final b()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method
