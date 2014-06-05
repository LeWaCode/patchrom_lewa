.class public final Lcom/tencent/qqpim/sdk/adaptive/b/a;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/tencent/qqpim/sdk/adaptive/b/a;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

.field private d:Lcom/tencent/qqpim/sdk/interfaces/d;

.field private e:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

.field private f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

.field private g:Lcom/tencent/qqpim/sdk/adaptive/b/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->b:Landroid/content/Context;

    :try_start_0
    new-instance v0, Lcom/tencent/qqpim/sdk/adaptive/a/a;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/sdk/adaptive/a/a;-><init>(Landroid/content/Context;)V

    const-string v1, "AdaptiveCore"

    const-string v2, "start to parse config xml "

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/a/a;->a()V

    new-instance v1, Lcom/tencent/qqpim/sdk/adaptive/b/b;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/adaptive/b/b;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/a/a;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdaptiveCore"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;
    .locals 2

    const-class v1, Lcom/tencent/qqpim/sdk/adaptive/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->h:Lcom/tencent/qqpim/sdk/adaptive/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/adaptive/b/a;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->h:Lcom/tencent/qqpim/sdk/adaptive/b/a;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->h:Lcom/tencent/qqpim/sdk/adaptive/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    return-object v0
.end method

.method public final a(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/interfaces/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->d:Lcom/tencent/qqpim/sdk/interfaces/d;

    return-void
.end method

.method public final b()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->b(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->c:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    return-object v0
.end method

.method public final b(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->e:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    return-void
.end method

.method public final c()Lcom/tencent/qqpim/sdk/interfaces/d;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->d:Lcom/tencent/qqpim/sdk/interfaces/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->c(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/interfaces/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->d:Lcom/tencent/qqpim/sdk/interfaces/d;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->d:Lcom/tencent/qqpim/sdk/interfaces/d;

    return-object v0
.end method

.method public final c(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    return-void
.end method

.method public final d()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->e:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->d(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->e:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->e:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    return-object v0
.end method

.method public final e()Lcom/tencent/qqpim/sdk/adaptive/b/d;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->g:Lcom/tencent/qqpim/sdk/adaptive/b/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a:Lcom/tencent/qqpim/sdk/adaptive/b/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/adaptive/b/c;->e(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->g:Lcom/tencent/qqpim/sdk/adaptive/b/d;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/b/a;->g:Lcom/tencent/qqpim/sdk/adaptive/b/d;

    return-object v0
.end method
