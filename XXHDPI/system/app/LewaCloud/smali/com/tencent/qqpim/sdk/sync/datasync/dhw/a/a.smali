.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;
.super Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

.field private b:Ljava/util/List;

.field private c:Ljava/util/Queue;

.field private d:I

.field private e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

.field private f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

.field private n:I

.field private o:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->h:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->i:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->j:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->n:I

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->p:Z

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->q:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->r:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c(I)V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->q:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)I
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    const-string v0, "ContactDataCtrl"

    const-string v1, "exeAdd() size = 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-string v0, "ContactDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "exeAdd() size = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v3, -0x1

    move v4, v0

    move-object v0, v1

    :goto_1
    if-gez v4, :cond_3

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;Ljava/util/List;ZI)V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v2, p1, v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->add(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-nez v0, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v2

    :cond_4
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;Ljava/util/List;[II)V

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(IIIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto :goto_3

    :cond_8
    move-object v2, v1

    goto :goto_2
.end method

.method private a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;-><init>()V

    invoke-virtual {v0, p6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-eq p6, v1, :cond_2

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne p6, v1, :cond_3

    :cond_2
    invoke-virtual {v0, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(I)V

    :cond_3
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-eq p6, v1, :cond_4

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne p6, v1, :cond_5

    :cond_4
    invoke-virtual {v0, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(J)V

    :cond_5
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne p6, v1, :cond_7

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iget v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d:I

    :cond_6
    :goto_1
    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->b(Z)V

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    if-eqz p5, :cond_0

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(Z)V

    invoke-virtual {v0, p5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne p6, v1, :cond_6

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iget v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->c:I

    goto :goto_1
.end method

.method private static a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    check-cast p0, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/a/b;->a()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 7

    if-nez p2, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    if-ne v2, v5, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v2, :cond_3

    iput-object v1, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->b:I

    iput v0, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    if-ne v2, v5, :cond_5

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v0, :cond_3

    iget-wide v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v0, :cond_3

    iput-wide v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    iput-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    if-ne v0, v2, :cond_3

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-object v3, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V
    .locals 2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;-><init>()V

    iput-object p1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    iput-wide p2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    if-eqz p4, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    iput-object p4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne p5, v1, :cond_3

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/h;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/h;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->h:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->h:Ljava/util/Map;

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne p5, v1, :cond_4

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/h;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/h;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    if-ne p5, v1, :cond_1

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/h;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->i:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->i:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    :cond_3
    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;-><init>()V

    iput-object p1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->i:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-string v0, "ContactDataCtrl"

    const-string v1, "handleSlowSync()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->r:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->g:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-interface {v6, v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum(Lcom/tencent/qqpim/sdk/interfaces/c;)J

    move-result-wide v2

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v5, p0

    move-wide v7, v2

    move-object v10, v4

    invoke-direct/range {v5 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v6}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->g:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-interface {v6, v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum(Lcom/tencent/qqpim/sdk/interfaces/c;)J

    move-result-wide v2

    sget-object v11, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v5, p0

    move-wide v7, v2

    move-object v10, v4

    invoke-direct/range {v5 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v6}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/List;ZI)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;-><init>()V

    invoke-virtual {v3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->a(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->b(I)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;[II)V
    .locals 5

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p3

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->j:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->j:Ljava/util/Map;

    :cond_2
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b(Ljava/util/List;Ljava/util/List;[II)V

    const/4 v0, 0x3

    if-eq p4, v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->j:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;[I)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;[I)V
    .locals 5

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    aget v3, p2, v0

    sget-object v4, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b(La/q;)I
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a(La/q;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "ContactDataCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "generateUpdateList() e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->d()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->q()I

    move-result v0

    goto :goto_1
.end method

.method private b(Ljava/util/List;Ljava/util/List;)I
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    const-string v0, "ContactDataCtrl"

    const-string v1, "exeMdf() size = 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-string v0, "ContactDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "exeMdf() size = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    add-int/lit8 v0, v3, -0x1

    move v4, v0

    move-object v0, v1

    :goto_1
    if-gez v4, :cond_2

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v5, v1, v2, v4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->add(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    if-nez v1, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-nez v0, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v2

    :cond_3
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    invoke-direct {p0, v2, v0, v4, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;Ljava/util/List;[II)V

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v0, p1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->update(Ljava/util/List;[I)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-lt v1, v3, :cond_8

    const/4 v0, 0x2

    invoke-direct {p0, v4, p2, v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;Ljava/util/List;[II)V

    :cond_7
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(IIIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto :goto_3

    :cond_b
    move-object v2, v1

    goto/16 :goto_2
.end method

.method private b(Ljava/util/List;)V
    .locals 14

    const-string v0, "ContactDataCtrl"

    const-string v1, "handleFastSync()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "ContactDataCtrl"

    const-string v1, "readNeedUploadList() mMap == null || mMap.size() == 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const-string v0, "ContactDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleFastSync() map num = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->r:Z

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->p()V

    goto :goto_0

    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->g:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum(Lcom/tencent/qqpim/sdk/interfaces/c;)J

    move-result-wide v2

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-nez v0, :cond_8

    const/4 v4, 0x0

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v6, p0

    move-wide v8, v2

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto :goto_1

    :cond_8
    iget-wide v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    cmp-long v4, v6, v2

    if-eqz v4, :cond_9

    iget v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v6, p0

    move-wide v8, v2

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto :goto_1

    :cond_9
    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v6, p0

    move-wide v8, v2

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto/16 :goto_1

    :cond_a
    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    iget v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v6, p0

    move-wide v8, v2

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto/16 :goto_1

    :cond_b
    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    if-nez v4, :cond_5

    if-eqz v5, :cond_5

    iget v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v6, p0

    move-wide v8, v2

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto/16 :goto_1

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->g:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum(Lcom/tencent/qqpim/sdk/interfaces/c;)J

    move-result-wide v2

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-nez v0, :cond_e

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto :goto_2

    :cond_e
    iget-wide v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_d

    iget v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;JILjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto :goto_2
.end method

.method private b(Ljava/util/List;Ljava/util/List;[II)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-eqz v0, :cond_2

    if-ne p4, v6, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->a()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->a(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;

    invoke-direct {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;-><init>()V

    invoke-virtual {v4, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->a(I)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->b(I)V

    aget v0, p3, v2

    sget-object v5, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v5

    if-ne v0, v5, :cond_4

    invoke-virtual {v4, v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(I)V

    add-int/lit8 v0, v1, 0x1

    :goto_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(I)V

    move v0, v1

    goto :goto_2

    :cond_5
    if-ne p4, v7, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->b()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->b(I)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->c()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->c(I)V

    goto :goto_1
.end method

.method private c(La/q;)I
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b(La/q;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->j()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->h:Ljava/util/Map;

    invoke-direct {p0, v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a(Ljava/util/Map;)V

    return v0

    :catch_0
    move-exception v1

    const-string v2, "ContactDataCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleOpRet(DataList dlist)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/util/List;Ljava/util/List;)I
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ContactDataCtrl"

    const-string v1, "exeDel() size = 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-string v0, "ContactDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "exeDel() size = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->c()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v3, -0x1

    move v4, v0

    move-object v0, v1

    :goto_1
    if-gez v4, :cond_3

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;Ljava/util/List;ZI)V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v2

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    if-eq v2, v0, :cond_5

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    if-nez v1, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-nez v0, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v2

    :cond_4
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-array v5, v3, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-lt v1, v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(IIIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0

    :cond_7
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    if-ne v2, v0, :cond_8

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, v5, v1

    :goto_5
    const/4 v0, 0x3

    invoke-direct {p0, v4, p2, v5, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;Ljava/util/List;[II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, v5, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0

    :cond_9
    move-object v1, v0

    goto :goto_3

    :cond_a
    move-object v2, v1

    goto :goto_2
.end method

.method private c(Ljava/util/List;)La/q;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->f()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->f(I)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v1, :cond_3

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a(Ljava/util/List;)La/q;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(I)Ljava/util/List;
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "ContactDataCtrl"

    const-string v1, "getData() no data"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->p:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    const-string v0, "ContactDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "needUploadContact.size() = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->p:Z

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x1

    const/16 v2, 0x9

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(IIIILjava/lang/Object;)V

    :cond_5
    move-object v5, v6

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private d(Ljava/util/List;Ljava/util/List;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_3

    array-length v0, v4

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v5

    move v3, v1

    :goto_3
    if-lt v3, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a(Ljava/util/Map;)V

    return-void

    :cond_0
    aget-object v0, v4, v3

    if-eqz v0, :cond_1

    aget-object v0, v4, v3

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v6

    aget-object v0, v4, v3

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/c;->g:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCheckSum(Lcom/tencent/qqpim/sdk/interfaces/c;)J

    move-result-wide v7

    if-eqz v6, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v1, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    iput-wide v7, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->e:Z

    :cond_1
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;-><init>()V

    iput-object v6, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    iput-wide v7, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->c:J

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move-object v4, v2

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    :cond_0
    return-void
.end method

.method private p()V
    .locals 7

    const-string v0, "ContactDataCtrl"

    const-string v1, "handleNeedDel()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    :cond_3
    const-string v1, "ContactDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contactInDb size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;-><init>()V

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(Ljava/lang/String;)V

    iget v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->b:I

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/p;->a(I)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/lang/String;JLjava/lang/String;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/q;)V

    goto :goto_0
.end method

.method private q()I
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(IIIILjava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iget v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->a:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v3

    :goto_1
    add-int/2addr v0, v2

    iput v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->a:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->b:I

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_2
    add-int/2addr v1, v3

    iput v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->b:I

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->h()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->i()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c(Ljava/util/List;Ljava/util/List;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->e()V

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v3

    if-eq v0, v3, :cond_6

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    if-ne v2, v0, :cond_9

    :cond_6
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a([B)I
    .locals 2

    const-string v0, "ContactDataCtrl"

    const-string v1, "writeBack()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c([B)La/q;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContactDataCtrl"

    const-string v1, "writeBack() dlist == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b(La/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(II[BLandroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->a(II[BLandroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->p:Z

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iput v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->a:I

    iput v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->b:I

    iput v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->c:I

    iput v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d:I

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->q:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->r:Z

    return-void
.end method

.method public final a()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(La/q;)[B

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b(Ljava/util/List;)La/q;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public final a(I)[B
    .locals 12

    const-string v0, "ContactDataCtrl"

    const-string v1, "getData()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const-string v0, "ContactDataCtrl"

    const-string v1, "getEntityData() mAllId == null || mAllId.size() == 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(IIIILjava/lang/Object;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    :cond_2
    const-string v0, "ContactDataCtrl"

    const-string v1, "readNeedUploadList() elist == null || elist.size() == 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->p()V

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c(Ljava/util/List;)La/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(La/q;)[B

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryNumber()I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->n:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d(I)V

    :cond_5
    const-string v1, "ContactDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getEntityData() allSize="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " contactNumByQueryNum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v3, v0, :cond_6

    const-string v1, "ContactDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getEntityData() error occur allSize="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " contactNumByQueryNum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(IIIILjava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v0, "ContactDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEntityData() allIdSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->j()I

    move-result v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    sub-int v1, v3, v1

    if-lez v1, :cond_e

    const-string v1, "ContactDataCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getEntityData() remain = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    sub-int v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    sub-int v2, v3, v2

    if-le v2, v0, :cond_9

    :goto_2
    const/4 v4, 0x0

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/c;->f:Lcom/tencent/qqpim/sdk/interfaces/c;

    move v2, v1

    move v5, v0

    :goto_3
    if-gtz v5, :cond_a

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->p:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(IIIILjava/lang/Object;)V

    :cond_8
    :goto_4
    move-object v0, v6

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    sub-int v0, v3, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->p:Z

    goto :goto_2

    :cond_a
    if-ge v5, v9, :cond_b

    add-int v4, v2, v5

    :goto_5
    sub-int v7, v4, v2

    const-string v0, "ContactDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "mAllId.subList("

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->r:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->b:Lcom/tencent/qqpim/sdk/interfaces/c;

    move-object v1, v0

    :goto_6
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0, v8, v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "ContactDataCtrl"

    const-string v1, "getEntityData read = null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    add-int v4, v2, v9

    goto :goto_5

    :cond_c
    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->e:Lcom/tencent/qqpim/sdk/interfaces/c;

    move-object v1, v0

    goto :goto_6

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v8, "ContactDataCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getEntityData read = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->filterEmptyContact(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->n:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int v10, v1, v10

    add-int/2addr v8, v10

    iput v8, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->n:I

    const-string v8, "ContactDataCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "illegal contact number in this query "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v1, v11

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sub-int v0, v4, v2

    sub-int v8, v5, v0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    sub-int v1, v4, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    add-int/2addr v7, v2

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(IIIILjava/lang/Object;)V

    move v2, v7

    move v5, v8

    goto/16 :goto_3

    :cond_e
    const-string v0, "ContactDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEntityData() error : mCurrentReadId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    goto/16 :goto_4

    :cond_f
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    if-nez v1, :cond_10

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    :cond_10
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_11
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->q()I

    move-result v0

    return v0
.end method

.method public final b([B)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c([B)La/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c(La/q;)I

    move-result v0

    return v0
.end method

.method public final c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;
    .locals 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;->a(Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;->a(Ljava/util/List;)V

    return-object v0

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->j:Ljava/util/Map;

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->j:Ljava/util/Map;

    iget v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v5, :cond_3

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    iget-object v1, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    iget-object v1, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->d:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->d:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/k;

    if-ne v1, v2, :cond_0

    if-eqz v5, :cond_0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->b:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->b:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/j;->d:Ljava/lang/String;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move-object v2, v1

    goto :goto_1
.end method

.method public final f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;
    .locals 5

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryNumber()I

    move-result v0

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->n:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d()I

    move-result v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->n:I

    sub-int/2addr v1, v2

    const-string v2, "ContactDataCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "before sync "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ContactDataCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after sync "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->e(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->n:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->g(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->n:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->o()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->delAllContactNotFilterAccountAndName()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->c:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->g:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->h:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->i:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->j:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->l:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->m:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    return-void
.end method
