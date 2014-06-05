.class public final Lcom/tencent/qqpim/sdk/core/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

.field private b:Ljava/util/HashMap;

.field private final c:Ljava/util/List;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/core/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    iput v0, p0, Lcom/tencent/qqpim/sdk/core/a/a;->d:I

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/core/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/core/a/a;->c:Ljava/util/List;

    iput v0, p0, Lcom/tencent/qqpim/sdk/core/a/a;->d:I

    return-void
.end method

.method private a(I)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "DataPrepareAccelerator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepareDataCache startPos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/core/a/a;->c:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/tencent/qqpim/sdk/core/a/a;->a(ILjava/util/List;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "DataPrepareAccelerator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "prepareDataCache ids size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/core/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v3, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const-string v1, "DataPrepareAccelerator"

    const-string v2, "prepareDataCache ids is null"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "DataPrepareAccelerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prepareDataCache queryBatch t="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/core/a/a;->a()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    array-length v2, v1

    :goto_2
    if-lt v0, v2, :cond_2

    iput p1, p0, Lcom/tencent/qqpim/sdk/core/a/a;->d:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    aget-object v3, v1, v0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static a(ILjava/util/List;)[Ljava/lang/String;
    .locals 6

    const/16 v1, 0x12c

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v0, v3, p0

    if-gt v0, v1, :cond_2

    :goto_1
    const-string v1, "DataPrepareAccelerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prepareDataCache allIdListSize="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " realReadSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v0, p0

    :try_start_0
    invoke-interface {p1, p0, v0}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DataPrepareAccelerator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNeedPrepareIdList e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_3
    const-string v1, "DataPrepareAccelerator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepareDataCache subList size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/tencent/qqpim/sdk/core/a/a;->a(I)Z

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/core/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/a/a;->a:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    iget v2, p0, Lcom/tencent/qqpim/sdk/core/a/a;->d:I

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const-string v4, "DataPrepareAccelerator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isNeedReprepareDataCache startPos="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cacheSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v2, v3

    if-le v2, p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/core/a/a;->b:Ljava/util/HashMap;

    :cond_0
    return-void
.end method
