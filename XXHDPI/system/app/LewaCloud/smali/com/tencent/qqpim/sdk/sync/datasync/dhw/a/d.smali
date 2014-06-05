.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;
.super Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/Queue;

.field private g:Ljava/util/Queue;

.field private h:Ljava/util/Queue;

.field private i:Ljava/util/List;

.field private j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

.field private k:I

.field private l:Z

.field private m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

.field private n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->k:I

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->l:Z

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->o:I

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->p:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->c(I)V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->p:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PhotoDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "catchUpdateList "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "PhotoDataCtrl"

    const-string v2, "updatePhoto() id == null"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;-><init>()V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->setmContactId(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->setmPhotoMd5(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->c:[B

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->setmPhotoData([B)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(ZLjava/util/List;)V
    .locals 7

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryContactsOnlyPhoto(Ljava/util/List;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v4

    const/4 v0, 0x0

    move v2, v0

    move-object v1, v3

    :goto_2
    if-lt v2, v6, :cond_3

    invoke-direct {p0, p1, p2, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(ZLjava/util/List;Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->b(ZLjava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmContactId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    aget-object v0, v4, v2

    if-nez v0, :cond_4

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    aget-object v0, v4, v2

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/e;->c()[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4
.end method

.method private a(ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    const/4 v5, 0x1

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->e:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->e:Ljava/util/List;

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmPhotoMd5()Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    new-instance v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;

    invoke-direct {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;-><init>()V

    invoke-virtual {v4, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->a(I)V

    invoke-virtual {v4, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->e(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {v4, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(I)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(I)V

    goto :goto_2
.end method

.method private b(La/q;)I
    .locals 10

    const-string v1, "PhotoDataCtrl"

    const-string v2, "handleOpRet()"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_0
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v4

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b(La/q;)I

    move-result v4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->b:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v1, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a(Ljava/util/Map;)V

    move v1, v4

    :goto_0
    return v1

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    move-object v3, v0

    if-eqz v3, :cond_1

    iget-object v1, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v1, :cond_3

    iget-object v8, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/n;

    sget-object v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/n;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/n;

    if-ne v8, v9, :cond_4

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v1

    move v1, v4

    const-string v3, "PhotoDataCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleOpRet(DataList dlist)"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    iput-object v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a(Ljava/util/Map;)V

    return-void

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->e:Z

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v0, :cond_3

    iget-object v1, v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/n;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/n;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/n;

    if-ne v1, v7, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(ZLjava/util/List;Ljava/util/List;)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v5, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmPhotoMd5()Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_2
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->c:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move-object v2, v3

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v0, :cond_3

    iput-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    goto :goto_3
.end method

.method private d()I
    .locals 8

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->delContactPhotoBatch(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a(Ljava/util/Map;)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v0, :cond_4

    iget-object v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    if-eqz v6, :cond_4

    iput-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    goto :goto_2

    :cond_7
    const/16 v2, 0xa

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v0, "PhotoDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "updatePhoto() needAddList size = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    if-nez v0, :cond_8

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->delContactPhotoBatch(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "PhotoDataCtrl"

    const-string v2, "delPhoto succ"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->addContactPhotoBatch(Ljava/util/List;)Z

    move-result v0

    move v6, v0

    :goto_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    invoke-direct {p0, v6, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(ZLjava/util/List;)V

    const/4 v2, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(IIIILjava/lang/Object;)V

    if-nez v6, :cond_9

    const-string v0, "PhotoDataCtrl"

    const-string v1, "updatePhoto() updateFail"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_1

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/PhotoEntity;->getmContactId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    move v6, v0

    goto :goto_4
.end method

.method private d([B)La/H;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->m()[B

    move-result-object v0

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

    const-string v2, "PhotoDataCtrl"

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
.method public final a([B)I
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "PhotoDataCtrl"

    const-string v1, "writeBack()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v4

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d([B)La/H;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    :goto_1
    invoke-direct {p0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    :cond_4
    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->k:I

    iget-object v5, v0, La/H;->b:[B

    array-length v5, v5

    add-int/2addr v1, v5

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->k:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v5, v0, La/H;->a:La/I;

    iget v0, v5, La/I;->c:I

    iget v1, v5, La/I;->b:I

    if-ne v0, v1, :cond_8

    iget v0, v5, La/I;->b:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->k:I

    new-array v6, v0, [B

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;-><init>()V

    iget-object v1, v5, La/I;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->b:Ljava/lang/String;

    iput-object v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->c:[B

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->k:I

    :goto_3
    move-object v3, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/H;

    if-nez v0, :cond_6

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->k:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_1

    :cond_6
    iget-object v0, v0, La/H;->b:[B

    array-length v7, v0

    invoke-static {v0, v2, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_7
    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->k:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_8
    move-object v0, v3

    goto :goto_3

    :cond_9
    move v0, v4

    goto/16 :goto_0
.end method

.method public final a(II[BLandroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->a(II[BLandroid/content/Context;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->p:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->o:I

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->b(Ljava/util/Map;)V

    const-string v0, "PhotoDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPhotoMd5() needupLoad size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(La/q;)[B

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b(Ljava/util/List;)La/q;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public final a(I)[B
    .locals 13

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->o:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(IIIILjava/lang/Object;)V

    const-string v0, "PhotoDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPhoto() needUploadPhotoNum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    if-nez v0, :cond_4

    const-string v0, "PhotoDataCtrl"

    const-string v1, "getPhoto() mUploadIdqueue == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_3
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    :goto_3
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->l:Z

    :cond_6
    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->getContactPhoto(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "PhotoDataCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPhoto() photo succ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v2, "PhotoDataCtrl"

    const-string v4, "getPhoto() photo == null"

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    if-nez v2, :cond_a

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    :cond_a
    array-length v5, v1

    const/4 v4, 0x0

    array-length v2, v1

    div-int v6, v2, p1

    array-length v2, v1

    rem-int/2addr v2, p1

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_4
    add-int/2addr v2, v6

    int-to-short v8, v2

    const/4 v2, 0x1

    move v6, v4

    move v4, v5

    move v5, v2

    :goto_5
    if-gtz v4, :cond_d

    const/4 v1, 0x3

    const/4 v2, 0x1

    sub-int v4, v3, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(IIIILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->l:Z

    if-eqz v0, :cond_b

    const/4 v1, 0x3

    const/4 v2, 0x2

    sub-int v4, v3, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(IIIILjava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    if-lt v4, p1, :cond_e

    move v2, p1

    :goto_6
    new-array v9, v2, [B

    const/4 v10, 0x0

    invoke-static {v1, v6, v9, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v10, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;

    invoke-direct {v10}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;-><init>()V

    iget-object v11, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->b:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;->a:Ljava/lang/String;

    iput-short v5, v10, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;->b:S

    iput-short v8, v10, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;->c:S

    iput-object v9, v10, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;->d:[B

    iget-object v9, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    invoke-interface {v9, v10}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/2addr v6, v2

    sub-int/2addr v4, v2

    add-int/lit8 v2, v5, 0x1

    int-to-short v2, v2

    move v5, v2

    goto :goto_5

    :cond_e
    move v2, v4

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->l:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    :cond_10
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v1, :cond_11

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_11
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    move-object v6, v0

    :goto_7
    if-eqz v6, :cond_12

    const-string v0, "PhotoDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getData() stream id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, La/H;->a:La/I;

    iget-object v2, v2, La/I;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, La/H;->a:La/I;

    iget v2, v2, La/I;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, La/H;->a:La/I;

    iget v2, v2, La/I;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-nez v6, :cond_14

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_13
    new-instance v1, La/H;

    invoke-direct {v1}, La/H;-><init>()V

    new-instance v2, La/I;

    invoke-direct {v2}, La/I;-><init>()V

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;->a:Ljava/lang/String;

    iput-object v3, v2, La/I;->a:Ljava/lang/String;

    iget-short v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;->b:S

    iput v3, v2, La/I;->b:I

    iget-short v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;->c:S

    iput v3, v2, La/I;->c:I

    iput-object v2, v1, La/H;->a:La/I;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/o;->d:[B

    iput-object v0, v1, La/H;->b:[B

    move-object v6, v1

    goto :goto_7

    :cond_14
    const/4 v1, 0x3

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(IIIILjava/lang/Object;)V

    invoke-virtual {v6}, La/H;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ZipUtil;->zip([B)[B

    move-result-object v0

    :cond_15
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->m()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v0

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d()I

    move-result v0

    return v0
.end method

.method public final b([B)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->c([B)La/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->b(La/q;)I

    move-result v0

    return v0
.end method

.method public final c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-object v0
.end method

.method public final f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->q:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->q:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->getAllEntityIdWithPhoto()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->q:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->e(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->q:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    return-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a:Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->f:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->g:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->h:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->n:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    return-void
.end method
