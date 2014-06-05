.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/util/Map;

.field private l:Ljava/util/List;

.field private m:Lcom/tencent/qqpim/sdk/interfaces/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->k:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->l:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->m:Lcom/tencent/qqpim/sdk/interfaces/i;

    return-void
.end method

.method private a(La/b;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->g:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, La/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;-><init>()V

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;

    iput-object v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;

    iput-object p3, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->b:Ljava/lang/String;

    iput p2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->c:I

    iput-object v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;-><init>()V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;

    iput-object p3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->b:Ljava/lang/String;

    iput p2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->c:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)La/q;
    .locals 7

    new-instance v1, La/q;

    invoke-direct {v1}, La/q;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, v1, La/q;->b:Ljava/util/ArrayList;

    return-object v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;

    new-instance v4, La/o;

    invoke-direct {v4}, La/o;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c()I

    move-result v5

    iput v5, v4, La/o;->a:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, La/o;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-object v5, v4, La/o;->d:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->e()I

    move-result v5

    iput v5, v4, La/o;->c:I

    new-instance v5, La/t;

    invoke-direct {v5}, La/t;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->g()I

    move-result v6

    iput v6, v5, La/t;->a:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, La/t;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->b()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, La/t;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, v5, La/t;->b:Ljava/lang/String;

    :cond_3
    new-instance v0, La/n;

    invoke-direct {v0}, La/n;-><init>()V

    iput-object v4, v0, La/n;->a:La/o;

    invoke-virtual {v5}, La/t;->toByteArray()[B

    move-result-object v4

    iput-object v4, v0, La/n;->b:[B

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static c(Ljava/util/List;)La/q;
    .locals 8

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, La/q;

    invoke-direct {v1}, La/q;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    iput-object v2, v1, La/q;->b:Ljava/util/ArrayList;

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    if-eqz v0, :cond_1

    new-instance v4, La/n;

    invoke-direct {v4}, La/n;-><init>()V

    new-instance v5, La/o;

    invoke-direct {v5}, La/o;-><init>()V

    iget-object v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    iput v6, v5, La/o;->a:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a()J

    move-result-wide v6

    iput-wide v6, v5, La/o;->e:J

    :cond_3
    :goto_3
    iget-object v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    iput-object v6, v5, La/o;->b:Ljava/lang/String;

    iput-object v5, v4, La/n;->a:La/o;

    iget-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    if-eq v5, v6, :cond_4

    new-instance v5, La/r;

    invoke-direct {v5}, La/r;-><init>()V

    new-instance v6, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v6}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    iget-object v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    iput-object v7, v5, La/r;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    iput-object v7, v5, La/r;->b:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->g:Ljava/lang/String;

    iput-object v7, v5, La/r;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->f:Ljava/lang/String;

    iput-object v0, v5, La/r;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, La/r;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    invoke-virtual {v6}, Lcom/qq/taf/jce/JceOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v4, La/n;->b:[B

    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "PackageModel"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :try_start_2
    iget-object v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    if-ne v6, v7, :cond_6

    const/4 v6, 0x2

    iput v6, v5, La/o;->a:I

    iget v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    iput v6, v5, La/o;->c:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a()J

    move-result-wide v6

    iput-wide v6, v5, La/o;->e:J

    goto :goto_3

    :cond_6
    iget-object v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    if-ne v6, v7, :cond_3

    const/4 v6, 0x3

    iput v6, v5, La/o;->a:I

    iget v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    iput v6, v5, La/o;->c:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public final a(La/q;)I
    .locals 6

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, La/q;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->m:Lcom/tencent/qqpim/sdk/interfaces/i;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->m:Lcom/tencent/qqpim/sdk/interfaces/i;

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a:Ljava/util/List;

    :cond_3
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b:Ljava/util/List;

    :cond_4
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c:Ljava/util/List;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c:Ljava/util/List;

    :cond_5
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->d:Ljava/util/List;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->d:Ljava/util/List;

    :cond_6
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->e:Ljava/util/List;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->e:Ljava/util/List;

    :cond_7
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->f:Ljava/util/List;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->f:Ljava/util/List;

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/n;

    iget-object v2, v0, La/n;->a:La/o;

    if-eqz v2, :cond_9

    iget v3, v2, La/o;->a:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, v0, La/n;->b:[B

    if-eqz v0, :cond_9

    new-instance v3, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v3, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/p;

    invoke-direct {v0}, La/p;-><init>()V

    invoke-virtual {v0, v3}, La/p;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    :try_start_0
    iget-object v3, v0, La/p;->b:La/b;

    iget v4, v2, La/o;->c:I

    iget-object v5, v2, La/o;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a(La/b;ILjava/lang/String;)V

    iget-object v0, v0, La/p;->a:[B

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->m:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-interface {v3, v0}, Lcom/tencent/qqpim/sdk/interfaces/i;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->d:Ljava/util/List;

    iget v2, v2, La/o;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "PackageModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unpackContact"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, v0, La/n;->b:[B

    if-eqz v0, :cond_9

    new-instance v3, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v3, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/p;

    invoke-direct {v0}, La/p;-><init>()V

    invoke-virtual {v0, v3}, La/p;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    :try_start_1
    iget-object v3, v0, La/p;->a:[B

    iget-object v0, v0, La/p;->b:La/b;

    iget v4, v2, La/o;->c:I

    iget-object v5, v2, La/o;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a(La/b;ILjava/lang/String;)V

    if-eqz v3, :cond_9

    array-length v0, v3

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->m:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-interface {v0, v3}, Lcom/tencent/qqpim/sdk/interfaces/i;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v3, v2, La/o;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->setId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->e:Ljava/util/List;

    iget v2, v2, La/o;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v2, "PackageModel"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c:Ljava/util/List;

    iget-object v3, v2, La/o;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->f:Ljava/util/List;

    iget v2, v2, La/o;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)La/q;
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->m:Lcom/tencent/qqpim/sdk/interfaces/i;

    if-nez v1, :cond_2

    invoke-static {v9}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->m:Lcom/tencent/qqpim/sdk/interfaces/i;

    :cond_2
    new-instance v2, La/q;

    invoke-direct {v2}, La/q;-><init>()V

    iput-byte v9, v2, La/q;->a:B

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v3, v2, La/q;->b:Ljava/util/ArrayList;

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->d()Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-result-object v6

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-eq v6, v7, :cond_4

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-result-object v6

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne v6, v7, :cond_6

    :cond_4
    new-instance v1, La/p;

    invoke-direct {v1}, La/p;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->g()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->m:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-interface {v6, v5}, Lcom/tencent/qqpim/sdk/interfaces/i;->composeVcard(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v5

    if-eqz v5, :cond_5

    iput-object v5, v1, La/p;->a:[B

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->f()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, La/b;

    invoke-direct {v5}, La/b;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->e()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, La/b;->a:Ljava/lang/String;

    iput-object v5, v1, La/p;->b:La/b;

    :cond_6
    new-instance v5, La/o;

    invoke-direct {v5}, La/o;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-result-object v6

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne v6, v7, :cond_c

    iput v9, v5, La/o;->a:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->h()J

    move-result-wide v7

    iput-wide v7, v5, La/o;->e:J

    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->b()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, La/o;->b:Ljava/lang/String;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-eq v6, v7, :cond_8

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->c()I

    move-result v6

    iput v6, v5, La/o;->c:I

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->f()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->e()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, La/o;->d:Ljava/lang/String;

    :cond_9
    new-instance v6, La/n;

    invoke-direct {v6}, La/n;-><init>()V

    iput-object v5, v6, La/n;->a:La/o;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-result-object v5

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-eq v5, v7, :cond_a

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-result-object v0

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne v0, v5, :cond_b

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, La/p;->toByteArray()[B

    move-result-object v0

    iput-object v0, v6, La/n;->b:[B

    :cond_b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne v6, v7, :cond_d

    const/4 v7, 0x2

    iput v7, v5, La/o;->a:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->h()J

    move-result-wide v7

    iput-wide v7, v5, La/o;->e:J

    goto :goto_2

    :cond_d
    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne v6, v7, :cond_7

    const/4 v7, 0x3

    iput v7, v5, La/o;->a:I

    goto :goto_2
.end method

.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b(La/q;)I
    .locals 6

    const/4 v5, 0x1

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, La/q;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/n;

    iget-object v2, v0, La/n;->a:La/o;

    iget-object v0, v0, La/n;->b:[B

    new-instance v3, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v3, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/t;

    invoke-direct {v0}, La/t;-><init>()V

    invoke-virtual {v0, v3}, La/t;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget v0, v0, La/t;->a:I

    if-ne v0, v5, :cond_2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;-><init>()V

    iget-object v3, v2, La/o;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->a:Ljava/lang/String;

    iget v3, v2, La/o;->c:I

    iput v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->b:I

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/e;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/e;

    iget v3, v2, La/o;->a:I

    if-ne v3, v5, :cond_8

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    iput-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    :cond_4
    :goto_2
    iget v3, v2, La/o;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    iput-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    :cond_5
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->k:Ljava/util/Map;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->k:Ljava/util/Map;

    :cond_6
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->k:Ljava/util/Map;

    iget-object v4, v2, La/o;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, La/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->l:Ljava/util/List;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->l:Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->l:Ljava/util/List;

    iget-object v2, v2, La/o;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget v3, v2, La/o;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    iput-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    goto :goto_2
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c(La/q;)I
    .locals 5

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, La/q;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->h:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->i:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/n;

    iget-object v2, v0, La/n;->a:La/o;

    if-eqz v2, :cond_2

    iget v3, v2, La/o;->a:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, v0, La/n;->b:[B

    if-eqz v0, :cond_2

    new-instance v3, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v3, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    new-instance v0, La/r;

    invoke-direct {v0}, La/r;-><init>()V

    invoke-virtual {v0, v3}, La/r;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    new-instance v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;-><init>()V

    iget-object v4, v0, La/r;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    iget v2, v2, La/o;->c:I

    iput v2, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    iget-object v2, v0, La/r;->b:Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    iget-object v2, v0, La/r;->d:Ljava/lang/String;

    iput-object v2, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->g:Ljava/lang/String;

    iget-object v0, v0, La/r;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, v0, La/n;->b:[B

    if-eqz v0, :cond_2

    new-instance v3, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v3, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    new-instance v0, La/r;

    invoke-direct {v0}, La/r;-><init>()V

    invoke-virtual {v0, v3}, La/r;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    new-instance v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;-><init>()V

    iget-object v4, v2, La/o;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    iget v2, v2, La/o;->c:I

    iput v2, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    iget-object v2, v0, La/r;->a:Ljava/lang/String;

    iput-object v2, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    iget-object v2, v0, La/r;->b:Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    iget-object v2, v0, La/r;->d:Ljava/lang/String;

    iput-object v2, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->g:Ljava/lang/String;

    iget-object v0, v0, La/r;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, v0, La/n;->b:[B

    if-eqz v0, :cond_2

    new-instance v3, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v3, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    new-instance v0, La/r;

    invoke-direct {v0}, La/r;-><init>()V

    invoke-virtual {v0, v3}, La/r;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    new-instance v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;-><init>()V

    iget-object v0, v0, La/r;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    iget v0, v2, La/o;->c:I

    iput v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    iget-object v0, v2, La/o;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->e:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->f:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->g:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->e:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->f:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->k:Ljava/util/Map;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->l:Ljava/util/List;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->h:Ljava/util/List;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->j:Ljava/util/List;

    return-object v0
.end method
