.class public final Lcom/tencent/qqpim/sdk/sync/b/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/sync/b/b/b;
.implements Lcom/tencent/qqpim/sdk/utils/net/HttpBase$NetworkListener;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/qqpim/sdk/sync/datasync/b;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:J

.field private i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/sync/b/a/a;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->b:Landroid/content/Context;

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->c:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    const/16 v0, 0xca

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->d:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->e:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->f:I

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->h:J

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->i:Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;I)I
    .locals 12

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    if-nez v0, :cond_0

    const/4 v0, -0x6

    :goto_0
    return v0

    :cond_0
    new-instance v4, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->b:Landroid/content/Context;

    invoke-direct {v4, v1}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->setSaveDataInRam(Z)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "SyncPhotoEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "downloadPhoto total count need download= "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v2, v1

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SyncPhotoEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadPhoto(),noMd5="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SyncPhotoEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "downloadPhoto(),noUrl="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    const/4 v3, 0x3

    const/4 v6, 0x0

    invoke-interface {v2, v3, v6, p3}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onSyncPhotoProgressChaned(III)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LWUPSYNC/PhotoItem;

    if-eqz v1, :cond_1

    iget-object v7, v1, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    iget-object v1, v1, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LWUPSYNC/PhotoItem;

    iget-boolean v6, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->g:Z

    if-eqz v6, :cond_8

    const/4 v0, -0x5

    goto/16 :goto_0

    :cond_8
    iget-object v6, v1, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    iget-object v7, v1, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    :cond_9
    const-string v1, "SyncPhotoEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "uploadContactPhoto not url, id="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/tencent/qqpim/sdk/c/a/f;->d()V

    const/4 v1, 0x0

    invoke-virtual {v4, v6, v1, v5}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doGetFile(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicLong;)Z

    move-result v1

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/c/a/f;->b(Z)V

    const-string v6, "SyncPhotoEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "downloadPhoto downloadSize = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-wide v8, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->h:J

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->h:J

    const-string v1, "SyncPhotoEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "downloadPhoto total count current all download = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->h:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->getDataInRam()[B

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v0, v7, v6}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->updateContactPhoto(Ljava/lang/String;[B)Z

    move-result v1

    const-string v8, "SyncPhotoEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "downloadPhoto updateSuccess= "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_c

    invoke-virtual {v0, v7, v6}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->addContactPhoto(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    const/4 v1, 0x1

    :cond_b
    const-string v7, "SyncPhotoEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "downloadPhoto addContactPhoto photoId= "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v1, :cond_d

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->f:I

    :cond_d
    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->releaseDataInRam()V

    add-int/lit8 v1, v2, 0x1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    mul-int/lit8 v6, v1, 0x61

    div-int/2addr v6, p3

    invoke-interface {v2, v6, v1, p3}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onSyncPhotoProgressChaned(III)V

    move v2, v1

    goto/16 :goto_2
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;II)I
    .locals 14

    const-string v1, "SyncPhotoEngine"

    const-string v2, "uploadContactPhoto start"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, -0x6

    :goto_0
    return v1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "SyncPhotoEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uploadContactPhoto total count need upload= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " packageSize="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move/from16 v0, p3

    invoke-interface {v2, v4, v5, v0}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onSyncPhotoProgressChaned(III)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->i:Ljava/util/Map;

    if-eqz v2, :cond_2

    const-string v2, "SyncPhotoEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cachedContactWithPhotoMap size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->i:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move v3, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "SyncPhotoEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getPhotoTime="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "SyncPhotoEngine"

    const-string v4, "cachedContactWithPhotoMap is null"

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LWUPSYNC/PhotoItem;

    iget-boolean v6, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->g:Z

    if-eqz v6, :cond_4

    const/4 v1, -0x5

    goto/16 :goto_0

    :cond_4
    iget-object v6, v2, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    iget-object v7, v2, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->i:Ljava/util/Map;

    if-eqz v10, :cond_5

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->i:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {v1, v7}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->getContactPhoto(Ljava/lang/String;)[B

    move-result-object v2

    const-string v10, "SyncPhotoEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "get photo from db,id="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    int-to-long v10, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v8

    add-long/2addr v8, v10

    long-to-int v3, v8

    if-nez v2, :cond_7

    const-string v2, "SyncPhotoEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "uploadContactPhoto not photo, id="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v10, "SyncPhotoEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "get photo from cache,id="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_9

    :cond_8
    const-string v2, "SyncPhotoEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "uploadContactPhoto not url, id="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v7, "SyncPhotoEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uploadContactPhoto photoSize="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "photoMd5= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt_bytes([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/c/a/f;->d()V

    move/from16 v0, p4

    invoke-direct {p0, v6, v2, v0}, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a(Ljava/lang/String;[BI)I

    move-result v2

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/c/a/f;->b(Z)V

    const-string v6, "SyncPhotoEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uploadContactPhoto ret= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xc8

    if-eq v6, v2, :cond_a

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_a
    iget-wide v6, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->h:J

    move/from16 v0, p4

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->h:J

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->e:I

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    mul-int/lit8 v6, v2, 0x61

    div-int v6, v6, p3

    move/from16 v0, p3

    invoke-interface {v4, v6, v2, v0}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onSyncPhotoProgressChaned(III)V

    move v4, v2

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;[BI)I
    .locals 5

    const/16 v4, 0xc8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "SyncPhotoEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "postContactPhotoByDividPackage pkgSize= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, p2

    add-int/lit8 v1, p3, 0x0

    if-ge v1, v2, :cond_3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?startpos="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    invoke-interface {v3, v1, p2, v0, p3}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->postContactPhoto(Ljava/lang/String;[BII)I

    move-result v1

    if-ne v1, v4, :cond_2

    add-int/2addr v0, p3

    add-int v3, v0, p3

    if-lt v3, v2, :cond_1

    :cond_2
    sub-int v3, v2, v0

    if-ne v1, v4, :cond_4

    if-lez v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?startpos="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&len="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    invoke-interface {v2, v1, p2, v0, v3}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->postContactPhoto(Ljava/lang/String;[BII)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v1, "SyncPhotoEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "postContactPhotoByDividPackage upload in one package url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    array-length v2, p2

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->postContactPhoto(Ljava/lang/String;[BII)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 12

    const/4 v11, 0x3

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->h:J

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->f:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->e:I

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onPhotoSyncBegin()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    invoke-interface {v0, v1, v1, v1}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onSyncPhotoProgressChaned(III)V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->c:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    iget v6, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->d:I

    new-instance v7, Lcom/tencent/qqpim/sdk/sync/b/b/a;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->b:Landroid/content/Context;

    invoke-direct {v7, v0, p0}, Lcom/tencent/qqpim/sdk/sync/b/b/a;-><init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/sync/b/b/b;)V

    const/4 v0, 0x1

    const/16 v8, 0xd5

    iget v9, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->d:I

    if-eq v8, v9, :cond_0

    const/16 v8, 0xcc

    iget v9, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->d:I

    if-ne v8, v9, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {v7, v0}, Lcom/tencent/qqpim/sdk/sync/b/b/a;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7}, Lcom/tencent/qqpim/sdk/sync/b/b/a;->a()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->i:Ljava/util/Map;

    if-eqz v0, :cond_c

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->b:Landroid/content/Context;

    invoke-static {v7, v5, v0, v6}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Landroid/content/Context;Lcom/tencent/qqpim/sdk/sync/datasync/b;Ljava/util/ArrayList;I)[B

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getPOST_URL_WUP_SERVER()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0, v4}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->postSyncData(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    :goto_0
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    invoke-interface {v5, v11, v1, v1}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onSyncPhotoProgressChaned(III)V

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    :cond_2
    move v0, v3

    :goto_1
    return v0

    :cond_3
    iget-boolean v4, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->g:Z

    if-eqz v4, :cond_4

    const/4 v0, -0x5

    goto :goto_1

    :cond_4
    new-instance v4, LWUPSYNC/PhotoResp;

    invoke-direct {v4}, LWUPSYNC/PhotoResp;-><init>()V

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/PhotoResp;

    if-nez v0, :cond_5

    move-object v4, v2

    :goto_2
    if-nez v4, :cond_7

    const/4 v0, -0x6

    goto :goto_1

    :cond_5
    iget v4, v0, LWUPSYNC/PhotoResp;->result:I

    if-eqz v4, :cond_6

    const-string v4, "SyncPhotoEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "syncContactPhoto photoResp.result= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, LWUPSYNC/PhotoResp;->result:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_2

    :cond_6
    move-object v4, v0

    goto :goto_2

    :cond_7
    iget-object v5, v4, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    iget-object v6, v4, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    if-nez v5, :cond_8

    move v2, v1

    :goto_3
    if-nez v6, :cond_9

    move v0, v1

    :goto_4
    add-int v7, v2, v0

    const-string v8, "SyncPhotoEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "syncContactPhoto totalSize="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " needUploadSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " needDownloadSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    invoke-interface {v8, v11, v1, v7}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onSyncPhotoProgressChaned(III)V

    if-lez v2, :cond_b

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->c:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    iget v2, v4, LWUPSYNC/PhotoResp;->pkgSize:I

    invoke-direct {p0, v1, v5, v7, v2}, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a(Landroid/content/Context;Ljava/util/ArrayList;II)I

    move-result v1

    :goto_5
    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->c:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-direct {p0, v0, v6, v7}, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a(Landroid/content/Context;Ljava/util/ArrayList;I)I

    move-result v0

    :goto_6
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onPhotoSyncEnd(I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_6

    :cond_b
    move v1, v3

    goto :goto_5

    :cond_c
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final a(II)V
    .locals 3

    const-string v0, "SyncPhotoEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScanProgressChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a:Lcom/tencent/qqpim/sdk/sync/b/a/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/b/a/a;->onScanProgressChanged(II)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/b;I)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->c:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    iput p2, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->h:J

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->g:Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->e:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->f:I

    return v0
.end method

.method public final onNetworkEvent(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onProgressChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
