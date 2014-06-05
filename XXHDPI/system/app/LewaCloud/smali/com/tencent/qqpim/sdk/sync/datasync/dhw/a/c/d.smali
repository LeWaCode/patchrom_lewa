.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/interfaces/i;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a:Lcom/tencent/qqpim/sdk/interfaces/i;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(La/q;)I
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
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a:Lcom/tencent/qqpim/sdk/interfaces/i;

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a:Lcom/tencent/qqpim/sdk/interfaces/i;

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->b:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->b:Ljava/util/List;

    :cond_3
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->c:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->c:Ljava/util/List;

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/n;

    iget-object v2, v0, La/n;->a:La/o;

    if-eqz v2, :cond_5

    iget v3, v2, La/o;->a:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, v0, La/n;->b:[B

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->c:Ljava/util/List;

    iget v2, v2, La/o;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/F;

    invoke-direct {v0}, La/F;-><init>()V

    invoke-virtual {v0, v2}, La/F;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    :try_start_0
    iget-object v0, v0, La/F;->a:[B

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/sdk/interfaces/i;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "SmsPackageModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unpackContact"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a:Lcom/tencent/qqpim/sdk/interfaces/i;

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a:Lcom/tencent/qqpim/sdk/interfaces/i;

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

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne v6, v7, :cond_4

    new-instance v1, La/F;

    invoke-direct {v1}, La/F;-><init>()V

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->a:Lcom/tencent/qqpim/sdk/interfaces/i;

    invoke-interface {v6, v5}, Lcom/tencent/qqpim/sdk/interfaces/i;->composeVcard(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v5

    if-eqz v5, :cond_4

    iput-object v5, v1, La/F;->a:[B

    :cond_4
    new-instance v5, La/o;

    invoke-direct {v5}, La/o;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-result-object v6

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne v6, v7, :cond_5

    iput v9, v5, La/o;->a:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->h()J

    move-result-wide v7

    iput-wide v7, v5, La/o;->e:J

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->b()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, La/o;->b:Ljava/lang/String;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-eq v6, v7, :cond_6

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->c()I

    move-result v6

    iput v6, v5, La/o;->c:I

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->f()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, La/o;->d:Ljava/lang/String;

    :cond_7
    new-instance v0, La/n;

    invoke-direct {v0}, La/n;-><init>()V

    iput-object v5, v0, La/n;->a:La/o;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, La/F;->toByteArray()[B

    move-result-object v5

    iput-object v5, v0, La/n;->b:[B

    :cond_8
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
