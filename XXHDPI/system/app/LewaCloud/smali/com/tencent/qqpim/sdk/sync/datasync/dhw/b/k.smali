.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

.field private b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

.field private c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;

.field private d:Ljava/util/Map;

.field private e:Ljava/util/List;

.field private f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

.field private volatile g:Z

.field private h:I

.field private i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

.field private j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;

.field private k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;Lcom/tencent/qqpim/sdk/sync/datasync/b;III[B[B[BILjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->g:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;

    invoke-virtual {p3}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->l:Ljava/lang/String;

    new-instance v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;-><init>()V

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->l:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    if-eq p4, v1, :cond_1

    :cond_0
    :goto_0
    const-string v1, "SubSyncHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SubSyncHandler SyncKey:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " syncType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " accountType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getManufaturer()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->e(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f(Ljava/lang/String;)V

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->b(I)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->l:Ljava/lang/String;

    packed-switch p6, :pswitch_data_0

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    :goto_1
    invoke-virtual {p3}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getLCString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->i(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->d(I)V

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g(I)V

    invoke-virtual {v2, p5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->c(I)V

    invoke-virtual {v2, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->h(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a(B)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->b(B)V

    invoke-virtual {v2, v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->b(Ljava/lang/String;)V

    invoke-virtual {v2, p7}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a([B)V

    invoke-virtual {v2, p8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->b([B)V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->c([B)V

    invoke-virtual {p3}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->k()I

    move-result v1

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->b(S)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a(I)V

    invoke-virtual {p3}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->l()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;)V

    invoke-virtual {p3}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->m()S

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a(S)V

    invoke-virtual {p3}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->n()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->h(I)V

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/d;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-direct {v1, v2, v3, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/d;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;)V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;)V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;

    return-void

    :cond_1
    const/16 v1, 0xc8

    if-ne p5, v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SubSyncHandler"

    const-string v4, "syncTypeConfirme() map\u8868\u4e0d\u53ef\u7528"

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a(Z)V

    :cond_2
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a(Z)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a(Z)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->e(I)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f(I)V

    goto :goto_2

    :cond_4
    const/16 v1, -0xd5

    if-ne v1, p5, :cond_2

    const/16 p5, 0xc9

    goto :goto_2

    :pswitch_0
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    goto/16 :goto_1

    :pswitch_1
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    goto/16 :goto_1

    :pswitch_2
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    goto/16 :goto_1

    :pswitch_3
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/f;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/util/List;)I
    .locals 6

    const/4 v5, 0x0

    const-string v0, "SubSyncHandler"

    const-string v1, "delAllData()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->g()Z

    move-result v0

    const-string v2, "SubSyncHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delAllData():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SubSyncHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delAllData() t:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(IIIILjava/lang/Object;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/c;->a(IIIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->f()I

    move-result v0

    return v0
.end method

.method private d(I)I
    .locals 3

    const-string v0, "SubSyncHandler"

    const-string v1, "sendStreamEnd()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    goto :goto_0
.end method

.method private e()I
    .locals 4

    const/16 v1, 0x4e20

    const/16 v0, 0x2ee0

    const-string v2, "SubSyncHandler"

    const-string v3, "sendData()"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;)V

    :cond_0
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v3, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_1
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v3, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_2
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h()I

    move-result v2

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->b()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->c(I)I

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    return v0

    :cond_3
    if-ne v2, v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    if-eq v2, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    if-eq v0, v1, :cond_5

    const v0, 0x80eb

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)I
    .locals 5

    const/16 v2, 0x36b0

    const/4 v1, 0x0

    const-string v0, "SubSyncHandler"

    const-string v3, "receiveData()"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;

    invoke-interface {v0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    move-result-object v0

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    move-result-object v0

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    if-ne v0, v2, :cond_e

    const v0, 0x80eb

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    const/16 v4, 0x1003

    if-eq v3, v4, :cond_4

    :cond_2
    const-string v3, "SubSyncHandler"

    const-string v4, "receiveData socket timeout"

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->e:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/c;->b(Ljava/lang/String;)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_5
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->g()V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    move-result-object v3

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->e:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v3, v4, :cond_a

    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    move v0, v1

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v2, 0x1b

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-eq v3, v0, :cond_b

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v3, v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->c(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v3, v0, :cond_d

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    const/16 v0, 0x4e20

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v3, v0, :cond_0

    const/16 v0, 0x5208

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method private f()I
    .locals 5

    const/16 v0, 0x2ee0

    const-string v1, "SubSyncHandler"

    const-string v2, "sendDataOpRet()"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h()I

    move-result v1

    const-string v2, "SubSyncHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncContactBase() handleCommand() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v0, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->b()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->c(I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private f(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;
    .locals 3

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->a()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(I)I

    move-result v1

    const/16 v2, 0x4650

    if-eq p1, v2, :cond_0

    const/16 v2, 0x4e20

    if-eq p1, v2, :cond_0

    const/16 v2, 0x59d8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x36b0

    if-ne p1, v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    add-int/2addr p1, v2

    :cond_1
    invoke-virtual {v0, v1, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->a(II)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_0
    return-void
.end method

.method private h()I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x2ee0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    if-ne v3, v4, :cond_2

    iget v1, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    const/16 v2, 0x1003

    if-eq v1, v2, :cond_0

    const/16 v0, 0x36b0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v2, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v3, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->g()V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v2, v3, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->b()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(I)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v2, v1, :cond_7

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->l()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(I)V

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v2, v1, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    const/16 v0, 0x4e20

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v2, v1, :cond_0

    const/16 v0, 0x5208

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 5

    const/4 v1, 0x0

    const-string v0, "SubSyncHandler"

    const-string v2, "syncEnd()"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "syncEnd"

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->k()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    :goto_1
    const-string v2, "SubSyncHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncEnd save SyncKey:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_8

    const/16 v0, 0x3a98

    :goto_2
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    const/16 v4, 0x1003

    if-eq v3, v4, :cond_3

    :cond_1
    const-string v2, "SubSyncHandler"

    const-string v3, "syncend() receiveData socket timeout"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v1, "SubSyncHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syncEnd() errorCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->e:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/c;->b(Ljava/lang/String;)V

    :goto_3
    const/16 v0, 0x36b0

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    move-result-object v0

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    const/16 v0, 0x4e20

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v0, v3, :cond_5

    const/16 v0, 0x5208

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;->a(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v3, 0xe

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v3, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->b(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)I
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0xd

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v0, "contactBase"

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/c;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    const/16 v2, 0xc

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-interface {p1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v3, v6

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d(I)I

    invoke-direct {p0, v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e(I)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v3, v6

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a;->e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;Z)I
    .locals 9

    const/4 v8, 0x4

    const/16 v7, 0xd

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v0, "sms"

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/c;->a(Ljava/lang/String;)V

    const-string v0, "SubSyncHandler"

    const-string v1, "syncSms()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    const/16 v2, 0xc

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v3, v6

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d(I)I

    invoke-direct {p0, v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e(I)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v3, v6

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v3, v6

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 9

    const/16 v3, 0x4e20

    const/16 v2, 0x4650

    const/16 v4, 0x36b0

    const/4 v1, 0x0

    const-string v0, "syncInit"

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    const/16 v0, 0x59d8

    :cond_0
    return v0

    :cond_1
    move v5, v1

    move v0, v1

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    if-ne v4, v0, :cond_2

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->g()I

    move-result v0

    :cond_2
    if-eq v4, v0, :cond_3

    const-string v0, "SubSyncHandler"

    const-string v6, "syncInit()"

    invoke-static {v0, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;

    invoke-interface {v0, v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    const-string v6, "SubSyncHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "syncInit time:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " res:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v6, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v0, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    const/16 v7, 0x1003

    if-eq v0, v7, :cond_9

    :cond_5
    const-string v7, "SubSyncHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "syncInit() net err stateCode="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "error="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v6, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8

    iget v0, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->e:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    :goto_4
    move v0, v4

    goto :goto_1

    :cond_6
    iget v0, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    goto :goto_2

    :cond_7
    iget v0, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->e:I

    goto :goto_3

    :cond_8
    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v6, v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v0, v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    move-result-object v0

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v6, v0, :cond_a

    const/16 v0, 0x5208

    goto/16 :goto_1

    :cond_a
    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v6, v0, :cond_b

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    move v0, v3

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v6}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    move-result-object v6

    if-eq v0, v6, :cond_c

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    move v0, v2

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->n()I

    move-result v0

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v6, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->b(I)V

    move v0, v1

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->g:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->j:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b()I

    move-result v0

    return v0
.end method

.method public final b(I)I
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SubSyncHandler"

    const-string v2, "syncEnd() cancel"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->k()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    const/16 v3, 0x1003

    if-eq v2, v3, :cond_3

    :cond_1
    const-string v2, "SubSyncHandler"

    const-string v3, "receiveData socket timeout"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/c;->b(Ljava/lang/String;)V

    iget v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->e:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    :goto_0
    const/16 v0, 0x36b0

    :goto_1
    return v0

    :cond_2
    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v1, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    if-ne v1, v2, :cond_0

    goto :goto_1
.end method

.method public final b(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)I
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0xd

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v0, "contactGroup"

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/c;->a(Ljava/lang/String;)V

    const-string v0, "SubSyncHandler"

    const-string v1, "syncContactGroup()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    const/16 v2, 0xc

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-interface {p1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v3, v6

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d(I)I

    invoke-direct {p0, v8}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e(I)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v3, v6

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v1

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    const/16 v3, 0x1003

    if-eq v2, v3, :cond_3

    :cond_0
    const-string v2, "SubSyncHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncReConnect() net err stateCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36b0

    :cond_1
    :goto_1
    const-string v1, "SubSyncHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syncReConnect() ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    iget v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v1, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->j()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-eq v2, v1, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    const/16 v0, 0x4e20

    goto :goto_1

    :cond_4
    const-string v0, "SubSyncHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syncReConnect() package err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x32c8

    goto :goto_1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->h:I

    return v0
.end method

.method public final c(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)I
    .locals 13

    const/16 v12, 0x3e9

    const/16 v11, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "contactPhoto"

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/c;->a(Ljava/lang/String;)V

    const-string v0, "SubSyncHandler"

    const-string v1, "syncContactPhoto()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;

    invoke-interface {p1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/e;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v0, "SubSyncHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "syncContactPhoto() mNeedUploadPhotoMd5 size = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;->a()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d:Ljava/util/Map;

    if-eqz v0, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v7}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    :goto_4
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_5
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    if-lez v0, :cond_a

    move v0, v5

    :goto_6
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    const/16 v1, 0x2011

    move v3, v2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(IIILjava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/l;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v6

    const/16 v7, 0xc

    move-object v5, p0

    move v8, v2

    move v9, v2

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v6

    move-object v5, p0

    move v7, v11

    move v8, v2

    move v9, v2

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v7, v0

    :goto_7
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    const/16 v6, 0x2013

    move v8, v2

    move-object v9, v4

    move-object v10, v4

    invoke-interface/range {v5 .. v10}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(IIILjava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    return v7

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    if-eqz v0, :cond_0

    iput-boolean v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->e:Z

    goto/16 :goto_0

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/m;->a:Ljava/util/List;

    if-eqz v3, :cond_7

    if-nez v0, :cond_8

    :cond_7
    move v0, v2

    :goto_9
    if-eqz v0, :cond_2

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    invoke-interface {v0, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_9

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_6

    :cond_b
    invoke-direct {p0, v12}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d(I)I

    invoke-direct {p0, v12}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->e(I)I

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v6

    move-object v5, p0

    move v7, v11

    move v8, v2

    move v9, v2

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v7, v0

    goto :goto_7

    :cond_c
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;->n()I

    move-result v6

    move-object v5, p0

    move v7, v11

    move v8, v2

    move v9, v2

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a(IIIILjava/lang/Object;)V

    move v7, v2

    goto/16 :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->getAllEntityIdWithPhoto()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v2

    :goto_a
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->p(I)V

    :cond_e
    move v7, v2

    goto/16 :goto_8

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_10
    move v3, v2

    goto/16 :goto_5

    :cond_11
    move v1, v2

    goto/16 :goto_4

    :cond_12
    move v0, v2

    goto/16 :goto_3
.end method

.method public final d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->k()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/k;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;

    return-object v0
.end method
