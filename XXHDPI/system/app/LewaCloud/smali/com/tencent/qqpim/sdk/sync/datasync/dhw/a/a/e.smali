.class public Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:[B

.field private c:Ljava/util/Queue;

.field private d:Ljava/util/Queue;

.field private e:I

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a:[B

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b:[B

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c:Ljava/util/Queue;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d:Ljava/util/Queue;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->e:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->i:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;

    invoke-direct {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    return-void
.end method

.method private b([B)I
    .locals 6

    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0, p1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v1, La/l;

    invoke-direct {v1}, La/l;-><init>()V

    invoke-virtual {v1, v0}, La/l;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v0, v1, La/l;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->a(Ljava/util/Map;)V

    :cond_1
    iget-object v0, v1, La/l;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->b(Ljava/util/Map;)V

    :cond_3
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a()I

    move-result v0

    return v0

    :cond_4
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/m;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;-><init>()V

    iget-object v4, v0, La/m;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    iget v4, v0, La/m;->b:I

    iput v4, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    iget-wide v4, v0, La/m;->c:J

    iput-wide v4, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    iget-object v4, v0, La/m;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    :goto_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    iget-object v4, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, v0, La/m;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_2

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/m;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;-><init>()V

    iget-object v3, v0, La/m;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    iget v3, v0, La/m;->b:I

    iput v3, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    iget-wide v3, v0, La/m;->c:J

    iput-wide v3, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    iget-object v3, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private c([B)La/H;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a:[B

    invoke-static {p1, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->unZip([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v0, La/H;

    invoke-direct {v0}, La/H;-><init>()V

    invoke-virtual {v0, v2}, La/H;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "MapDataCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPhotoPiece() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a([B)I
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "MapDataCtrl"

    const-string v1, "writeBack()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c([B)La/H;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :goto_1
    if-eqz v4, :cond_7

    :try_start_0
    invoke-direct {p0, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c:Ljava/util/Queue;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c:Ljava/util/Queue;

    :cond_3
    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->e:I

    iget-object v3, v0, La/H;->b:[B

    array-length v3, v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->e:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, v0, La/H;->a:La/I;

    iget v1, v0, La/I;->c:I

    iget v3, v0, La/I;->b:I

    if-ne v1, v3, :cond_8

    iget v0, v0, La/I;->b:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->e:I

    new-array v3, v0, [B

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v3

    :goto_3
    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->e:I

    :goto_4
    move-object v4, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/H;

    if-nez v0, :cond_5

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->e:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_1

    :cond_5
    iget-object v0, v0, La/H;->b:[B

    array-length v5, v0

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    move-object v0, v4

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "MapDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writeBack() t = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a()I

    move-result v0

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a()I

    move-result v0

    goto/16 :goto_0

    :cond_8
    move-object v0, v4

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3

    const-string v1, "MapDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "updateContactMap() size = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->a(Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public a([B[B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a:[B

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b:[B

    return-void
.end method

.method public a()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->i:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->i:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/contact/h;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/interfaces/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->i:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(I)[B
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d:Ljava/util/Queue;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d:Ljava/util/Queue;

    new-instance v2, La/l;

    invoke-direct {v2}, La/l;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "MapDataCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "catchData() contactmap size = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "MapDataCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "catchData() groupmap size = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    :cond_1
    iput-object v3, v2, La/l;->a:Ljava/util/ArrayList;

    iput-object v5, v2, La/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, La/l;->toByteArray()[B

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v0, v5

    if-nez v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d:Ljava/util/Queue;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_3
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    new-instance v8, La/m;

    invoke-direct {v8}, La/m;-><init>()V

    iget-object v9, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    iput-object v9, v8, La/m;->a:Ljava/lang/String;

    iget v9, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    iput v9, v8, La/m;->b:I

    iget-wide v9, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    iput-wide v9, v8, La/m;->c:J

    iget-object v9, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    if-nez v9, :cond_5

    const-string v0, ""

    iput-object v0, v8, La/m;->d:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    iput-object v0, v8, La/m;->d:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    new-instance v8, La/m;

    invoke-direct {v8}, La/m;-><init>()V

    iget-object v9, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    iput-object v9, v8, La/m;->a:Ljava/lang/String;

    iget v9, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    iput v9, v8, La/m;->b:I

    iget-wide v9, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    long-to-int v0, v9

    int-to-long v9, v0

    iput-wide v9, v8, La/m;->c:J

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    array-length v0, v5

    div-int/2addr v0, p1

    add-int/lit8 v6, v0, 0x1

    const/4 v0, 0x1

    move v2, v0

    move v3, v4

    move v0, p1

    :goto_4
    if-gt v2, v6, :cond_2

    new-instance v7, La/H;

    invoke-direct {v7}, La/H;-><init>()V

    new-instance v8, La/I;

    invoke-direct {v8}, La/I;-><init>()V

    iput v2, v8, La/I;->b:I

    iput v6, v8, La/I;->c:I

    iput-object v8, v7, La/H;->a:La/I;

    if-ne v2, v6, :cond_8

    array-length v8, v5

    rem-int v0, v8, v0

    :cond_8
    new-array v8, v0, [B

    invoke-static {v5, v3, v8, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v8, v7, La/H;->b:[B

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d:Ljava/util/Queue;

    invoke-interface {v8, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    const-string v0, "MapDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getData() mUploadMapPiece size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/H;

    if-nez v0, :cond_a

    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v0}, La/H;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->zip([B)[B

    move-result-object v0

    :cond_b
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b:[B

    invoke-static {v0, v1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v0

    goto/16 :goto_2
.end method

.method public b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->b(Ljava/util/Map;)V

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/a;->c()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1
.end method
