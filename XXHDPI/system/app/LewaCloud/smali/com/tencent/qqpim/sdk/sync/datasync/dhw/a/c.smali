.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;
.super Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

.field private c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

.field private d:Ljava/util/Queue;

.field private e:Ljava/util/List;

.field private f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

.field private g:Lcom/tencent/qqpim/sdk/interfaces/d;

.field private h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->i:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c(I)V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->i:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;)Lcom/tencent/qqpim/sdk/interfaces/e;
    .locals 3

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/a;->a()Lcom/tencent/qqpim/sdk/sync/contact/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/contact/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;JLcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;)V
    .locals 2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;-><init>()V

    iput-object p1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    iput-wide p4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    iput-object p3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    if-eq p6, v1, :cond_0

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    if-ne p6, v1, :cond_1

    :cond_0
    iput p2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a:Ljava/util/Map;

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "GroupDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exeAdd() mGroupAddList size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "GroupDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exeAdd() map size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_3

    invoke-direct {p0, v7, v4, v4, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b(Ljava/util/List;ZILjava/util/List;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-gez v1, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0, v2, v8, v7}, Lcom/tencent/qqpim/sdk/interfaces/d;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "GroupDataCtrl"

    const-string v1, "exeAdd() false"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    if-eqz v1, :cond_4

    iget-wide v8, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    if-eqz v0, :cond_6

    iget-object v8, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    if-nez v8, :cond_7

    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_7
    iget-object v8, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;)Lcom/tencent/qqpim/sdk/interfaces/e;

    move-result-object v0

    invoke-interface {v7, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    move v2, v3

    :goto_4
    if-lt v2, v9, :cond_a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0, v6}, Lcom/tencent/qqpim/sdk/interfaces/d;->b(Ljava/util/List;)Z

    move-result v0

    invoke-direct {p0, p1, v0, v4, v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/util/List;ZILjava/util/List;)V

    :cond_9
    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(IIIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    new-instance v1, Lcom/tencent/qqpim/sdk/defines/GroupEntity;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;-><init>()V

    iget-object v10, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->setGroupId(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->setGroupName(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->setGroupMember(Ljava/util/List;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private a(Ljava/util/List;ZILjava/util/List;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b(Ljava/util/List;ZILjava/util/List;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/interfaces/d;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_3
    const/4 v0, 0x0

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    if-nez v0, :cond_4

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b(Ljava/util/Map;)V

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/tencent/qqpim/sdk/object/c;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/object/c;-><init>()V

    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/qqpim/sdk/object/c;->a(I)V

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/object/c;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v2, v1

    goto :goto_2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/GroupEntity;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    iget-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    iget v6, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    const/4 v1, 0x3

    if-ne p3, v1, :cond_a

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/GroupEntity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupMember()Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v7

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    if-nez v1, :cond_b

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;-><init>()V

    iput-object v5, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    iput v6, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    iput-wide v7, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_b
    iput-object v5, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    iput v6, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    iput-wide v7, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    goto/16 :goto_4

    :cond_c
    move-object v3, v0

    goto/16 :goto_3
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_2
    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;-><init>()V

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iput-object v3, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(La/q;)I
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c(La/q;)I
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

    const-string v2, "GroupDataCtrl"

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
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->l()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->m()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->n()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c(Ljava/util/List;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    goto :goto_1
.end method

.method private b(Ljava/util/List;)V
    .locals 14

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "GroupDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exeMdf() mGroupMdfList size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->a()V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->o()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move-object v1, v7

    move-object v3, v7

    move-object v2, v7

    move-object v5, v7

    :goto_1
    if-gez v6, :cond_5

    const/4 v0, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0, v3, v1, v9}, Lcom/tencent/qqpim/sdk/interfaces/d;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0, v5}, Lcom/tencent/qqpim/sdk/interfaces/d;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/interfaces/d;->c(Ljava/util/List;)Z

    move-result v0

    :cond_4
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v10}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/util/List;ZILjava/util/List;)V

    goto :goto_0

    :cond_5
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v3

    move-object v3, v5

    :goto_2
    add-int/lit8 v4, v6, -0x1

    move v6, v4

    move-object v5, v3

    move-object v3, v1

    move-object v1, v0

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    iget-object v11, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v4, v11}, Lcom/tencent/qqpim/sdk/interfaces/d;->a(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v11, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;)Lcom/tencent/qqpim/sdk/interfaces/e;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    move-object v3, v1

    :goto_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v13, v1, v11, v12}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/tencent/qqpim/sdk/defines/GroupEntity;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;-><init>()V

    iget-object v13, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->setGroupMember(Ljava/util/List;)V

    if-nez v5, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v1, v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Lcom/tencent/qqpim/sdk/defines/GroupEntity;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;-><init>()V

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->setGroupMember(Ljava/util/List;)V

    if-nez v2, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    move-object v0, v3

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_2

    :cond_c
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    move-object v3, v1

    goto :goto_3

    :cond_d
    move-object v0, v2

    goto :goto_4

    :cond_e
    move-object v0, v3

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_2
.end method

.method private b(Ljava/util/List;ZILjava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    new-instance v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;-><init>()V

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(Ljava/lang/String;)V

    iget v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->b(I)V

    invoke-static {p4, v1}, Lcom/tencent/qqpim/sdk/sync/contact/a;->a(Ljava/util/List;I)Lcom/tencent/qqpim/sdk/interfaces/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/interfaces/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/interfaces/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->b(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(I)V

    :goto_1
    invoke-virtual {v2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/d;->c(I)V

    goto :goto_1
.end method

.method private c(La/q;)I
    .locals 9

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b(La/q;)I

    move-result v3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->j()Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b(Ljava/util/Map;)V

    move v0, v3

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v4

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    if-ne v2, v7, :cond_5

    if-eqz v5, :cond_3

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    if-eqz v2, :cond_3

    iget-object v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->a:Ljava/lang/String;

    iput-object v7, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->a:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->b:I

    iput v0, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v3

    const-string v2, "GroupDataCtrl"

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

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    if-ne v2, v7, :cond_6

    if-eqz v5, :cond_3

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    if-eqz v0, :cond_3

    iget-wide v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    if-eqz v0, :cond_3

    iput-wide v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    iput-object v2, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->c:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/d;

    if-ne v0, v2, :cond_3

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private c(Ljava/util/List;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "GroupDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exeDel size"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v3, v0, v6, v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b(Ljava/util/List;ZILjava/util/List;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e()V

    const-string v0, "GroupDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exeDel() mGroupDelList size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-gez v1, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/interfaces/d;->a(Ljava/util/List;)Z

    move-result v0

    invoke-direct {p0, p1, v0, v6, v7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/util/List;ZILjava/util/List;)V

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_7
    iget-object v4, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/tencent/qqpim/sdk/defines/GroupEntity;

    invoke-direct {v4}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;-><init>()V

    iget-object v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->setGroupId(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->setGroupMember(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private d()V
    .locals 8

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d(I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/GroupEntity;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupMember()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    new-instance v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    invoke-direct {v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;-><init>()V

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iput-object v4, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iput-object v2, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    iput-object v3, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    iput-object v1, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getAccountName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v1, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a()J

    move-result-wide v4

    iget-object v6, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/lang/String;ILjava/lang/String;JLcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;)V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/contact/h;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/interfaces/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    :cond_0
    return-void
.end method

.method private o()Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/GroupEntity;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupMember()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public final a([B)I
    .locals 2

    const-string v0, "GroupDataCtrl"

    const-string v1, "writeBack()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c([B)La/q;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b(La/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(II[BLandroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b;->a(II[BLandroid/content/Context;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->i:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    return-void
.end method

.method public final a()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(La/q;)[B

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->b(Ljava/util/List;)La/q;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public final a(I)[B
    .locals 13

    const/4 v2, 0x0

    const-string v0, "GroupDataCtrl"

    const-string v1, "catchGroup()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "GroupDataCtrl"

    const-string v1, "handleFastSync() map size = null or 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_3
    const-string v0, "GroupDataCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleFastSync() map size = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    :cond_4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-nez v3, :cond_5

    new-instance v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;-><init>()V

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    :cond_5
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->d(I)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    invoke-direct {p0, v11, v10}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_8
    const-string v0, "GroupDataCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleFastSync() group size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, v11, v10}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/qqpim/sdk/defines/GroupEntity;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getGroupMember()Ljava/util/List;

    move-result-object v0

    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    new-instance v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    invoke-direct {v9}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;-><init>()V

    iput-object v3, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    iput-object v4, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getAccountName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/GroupEntity;->getAccountType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;

    if-nez v0, :cond_c

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iput-object v0, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v1, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    iget-object v3, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a()J

    move-result-wide v4

    iget-object v6, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/lang/String;ILjava/lang/String;JLcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;)V

    goto :goto_2

    :cond_c
    iget-wide v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->d:J

    invoke-virtual {v9}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    iput v1, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iput-object v1, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    invoke-interface {v1, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v4, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    iget v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/i;->b:I

    iget-object v6, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a()J

    move-result-wide v7

    iget-object v9, v9, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(Ljava/lang/String;ILjava/lang/String;JLcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;)V

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d()V

    goto/16 :goto_0

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ge v2, p1, :cond_f

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_f
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    :cond_10
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    if-nez v0, :cond_11

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    :cond_11
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;->c(Ljava/util/List;)La/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a(La/q;)[B

    move-result-object v0

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public final b()I
    .locals 2

    const-string v0, "GroupDataCtrl"

    const-string v1, "writeBackEnd()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final b([B)I
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c([B)La/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->c(La/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/c;

    return-object v0
.end method

.method public final f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;->e(I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/f;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/d;->c()I

    move-result v0

    if-lez v0, :cond_0

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

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c/c;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->d:Ljava/util/Queue;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/c;->g:Lcom/tencent/qqpim/sdk/interfaces/d;

    return-void
.end method
