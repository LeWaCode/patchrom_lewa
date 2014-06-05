.class public Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;
.super Ljava/lang/Object;


# static fields
.field public static final OPERATE_ADD:I = -0x1

.field public static final OPERATE_CONTAIN:I = 0x1

.field public static final OPERATE_CONTAINED:I = 0x2

.field public static final OPERATE_NONE:I = -0x2

.field public static final OPERATE_UPDATE:I = 0x0

.field public static final PACK_NO_NAME:Ljava/lang/String; = "no_name_18+(_*&)-=QqPiM~@!3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkDuplicateUpdateAdd(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)I
    .locals 5

    const/4 v3, -0x2

    const/4 v1, -0x1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return v2

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-direct {p0, v0, p2}, Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;->isSameContactOrContain_Pack(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isSameContactOrContain_Pack(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)I
    .locals 4

    new-instance v1, Lcom/tencent/qqpim/sdk/object/a/d;

    check-cast p1, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v1, p1}, Lcom/tencent/qqpim/sdk/object/a/d;-><init>(Lcom/tencent/qqpim/sdk/object/a/b;)V

    new-instance v2, Lcom/tencent/qqpim/sdk/object/a/d;

    check-cast p2, Lcom/tencent/qqpim/sdk/object/a/b;

    invoke-direct {v2, p2}, Lcom/tencent/qqpim/sdk/object/a/d;-><init>(Lcom/tencent/qqpim/sdk/object/a/b;)V

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/object/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/object/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/a/d;->d(Lcom/tencent/qqpim/sdk/object/a/d;)I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/a/d;->a(Lcom/tencent/qqpim/sdk/object/a/d;)I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/a/d;->b(Lcom/tencent/qqpim/sdk/object/a/d;)I

    move-result v0

    goto :goto_0
.end method

.method private static putEntityToMap(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/Map;)V
    .locals 1

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public compareAndMerge(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/Map;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    if-nez p2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-static {p2}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getNameFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyWithTrim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "no_name_18+(_*&)-=QqPiM~@!3"

    move-object v1, v0

    :goto_1
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {v1, p2, p3}, Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;->putEntityToMap(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/Map;)V

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;->checkDuplicateUpdateAdd(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_4
    if-ltz v1, :cond_0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {p0, v0, p2, v2}, Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;->mergerContact(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public getMergeList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-gez v1, :cond_7

    move-object v0, v4

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    :cond_3
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    move v1, v3

    :goto_4
    if-nez v1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-direct {p0, v0, v2}, Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;->isSameContactOrContain_Pack(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_4

    :cond_7
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_8

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method

.method public mergerContact(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;->isSameContactOrContain_Pack(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object v0, p1

    check-cast v0, Lcom/tencent/qqpim/sdk/object/a/b;

    check-cast p2, Lcom/tencent/qqpim/sdk/object/a/b;

    const/4 v2, -0x2

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/object/a/b;->f()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->f()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/object/a/b;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    :goto_1
    new-instance v1, Lcom/tencent/qqpim/sdk/object/a/d;

    invoke-direct {v1, v0}, Lcom/tencent/qqpim/sdk/object/a/d;-><init>(Lcom/tencent/qqpim/sdk/object/a/b;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/object/a/d;

    invoke-direct {v0, p2}, Lcom/tencent/qqpim/sdk/object/a/d;-><init>(Lcom/tencent/qqpim/sdk/object/a/b;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/a/d;->c(Lcom/tencent/qqpim/sdk/object/a/d;)Lcom/tencent/qqpim/sdk/object/a/d;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/object/a/d;->a()Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/a/b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/object/a/b;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method
