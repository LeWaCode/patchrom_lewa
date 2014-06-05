.class public Lcom/tencent/qqpim/sdk/libs/netengine/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/tencent/qqpim/sdk/libs/netengine/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/libs/netengine/c;->a:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/qqpim/sdk/libs/netengine/b;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/libs/netengine/c;->a:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/qqpim/sdk/libs/netengine/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/libs/netengine/c;->a:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/netengine/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/b;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/libs/netengine/c;->a:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/libs/netengine/c;->a:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
