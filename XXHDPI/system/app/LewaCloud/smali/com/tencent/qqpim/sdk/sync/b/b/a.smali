.class public final Lcom/tencent/qqpim/sdk/sync/b/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/tencent/qqpim/sdk/sync/b/b/b;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/sync/b/b/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a;->b:Lcom/tencent/qqpim/sdk/sync/b/b/b;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a;->b:Lcom/tencent/qqpim/sdk/sync/b/b/b;

    return-void
.end method

.method private static a([Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/util/Map;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v0, p0, v2

    if-eqz v0, :cond_3

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/e;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/e;->b()[B

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Z)Ljava/util/ArrayList;
    .locals 18

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/b/b/a;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->getAllEntityIdWithPhoto()Ljava/util/List;

    move-result-object v9

    const-string v6, "SyncPhotoDataOperator"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getPhotoItems(),getAllEntityIdWithPhoto time="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v5

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    div-int/lit8 v3, v10, 0x64

    rem-int/lit8 v2, v10, 0x64

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    add-int v11, v3, v2

    const/4 v3, 0x0

    const/4 v2, 0x1

    move v6, v2

    move-object v2, v3

    move v3, v4

    :goto_2
    if-le v6, v11, :cond_4

    const-string v1, "SyncPhotoDataOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPhotoItems(),photoItems.size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/sync/b/b/a;->a([Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/b/b/a;->c:Ljava/util/Map;

    :cond_2
    move-object v1, v5

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/16 v4, 0x64

    if-ne v6, v11, :cond_5

    rem-int/lit8 v4, v10, 0x64

    if-nez v4, :cond_9

    const/16 v4, 0x64

    :cond_5
    :goto_3
    add-int/lit8 v7, v6, -0x1

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v4, v7

    invoke-interface {v9, v7, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->queryContactsOnlyPhoto(Ljava/util/List;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v12

    if-eqz v12, :cond_8

    array-length v4, v12

    if-eqz v4, :cond_8

    if-eqz p1, :cond_7

    array-length v4, v12

    if-eqz v2, :cond_6

    array-length v7, v2

    if-eqz v7, :cond_6

    array-length v7, v2

    if-le v4, v7, :cond_7

    :cond_6
    new-array v2, v4, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v12, v7, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    move-object v4, v2

    array-length v13, v12

    const/4 v2, 0x0

    move v7, v2

    move v2, v3

    :goto_4
    if-lt v7, v13, :cond_a

    move v3, v2

    move-object v2, v4

    :cond_8
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    :cond_9
    rem-int/lit8 v4, v10, 0x64

    goto :goto_3

    :cond_a
    aget-object v3, v12, v7

    add-int/lit8 v8, v2, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/b/b/a;->b:Lcom/tencent/qqpim/sdk/sync/b/b/b;

    invoke-interface {v2, v8, v10}, Lcom/tencent/qqpim/sdk/sync/b/b/b;->a(II)V

    if-eqz v3, :cond_b

    move-object v2, v3

    check-cast v2, Lcom/tencent/qqpim/sdk/object/a/e;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/object/a/e;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    new-instance v14, LWUPSYNC/PhotoItem;

    invoke-direct {v14}, LWUPSYNC/PhotoItem;-><init>()V

    invoke-interface {v3}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/object/a/e;->c()[B

    move-result-object v2

    if-nez v2, :cond_c

    const-string v2, ""

    :goto_5
    iput-object v2, v14, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const-string v15, "SyncPhotoDataOperator"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "getPhotoItems photoMd5= "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " id="

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    iput-object v2, v14, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v8

    goto :goto_4

    :cond_c
    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method

.method public final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a;->c:Ljava/util/Map;

    return-object v0
.end method
