.class public final Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;
.super Lcom/tencent/tccsync/RemoteSyncObserver;

# interfaces
.implements Lcom/tencent/qqpim/sdk/sync/datasync/tcc/c;


# static fields
.field private static synthetic y:[I


# instance fields
.field private final a:Ljava/util/Vector;

.field private final b:Ljava/util/Vector;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Ljava/lang/Thread;

.field private q:Z

.field private r:I

.field private s:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:[B

.field private w:I

.field private x:Z


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tccsync/RemoteSyncObserver;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->b:Ljava/util/Vector;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->c:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->d:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->e:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->f:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->g:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->h:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->i:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->j:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->k:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->l:I

    iput-wide v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->m:J

    iput-wide v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->n:J

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->o:Z

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->p:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->q:Z

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->r:I

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->s:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->v:[B

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->w:I

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->x:Z

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->s:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->q:Z

    return-void
.end method

.method private a(IIIILjava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;-><init>()V

    iput p1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iput p2, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput p3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    iput p4, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->s:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;->onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "TccSyncModel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addAdapter(), DbAdapterType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " opType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->m()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/tccsync/a;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->t:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->q:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_contact_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    invoke-static/range {p1 .. p6}, Lcom/tencent/qqpim/sdk/tccsync/a;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->q:Z

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->t:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sms_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    invoke-static/range {p1 .. p6}, Lcom/tencent/qqpim/sdk/tccsync/a;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->q:Z

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->t:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_secsms_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/tccsync/a;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->q:Z

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->t:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_calllog_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/tccsync/a;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->q:Z

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->t:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_bwlist_db.map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private j()I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->k()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private k()I
    .locals 13

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->r:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->p:Ljava/lang/Thread;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->n:J

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->m:J

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->q:Z

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->createFilesDir(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x2

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->t:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getServerURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/tccsync/RemoteSync;

    invoke-direct {v0}, Lcom/tencent/tccsync/RemoteSync;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->w:I

    invoke-static {v2, v4, v5}, Lcom/tencent/qqpim/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->w:I

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->l()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "TccSyncModel"

    const-string v7, "work useDynamicKey"

    invoke-static {v6, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v5, v5, 0x1

    :goto_1
    const/4 v7, 0x0

    and-int/lit8 v6, v5, 0x2

    if-lez v6, :cond_3

    const/16 v7, 0x10

    :cond_3
    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_4

    or-int/lit16 v7, v7, 0x100

    :cond_4
    const v6, 0xb220

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tccsync/RemoteSync;->setConfigure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tccsync/RemoteSyncObserver;II)V

    const/4 v1, 0x0

    move v4, v1

    :goto_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v4, v1, :cond_9

    const-string v1, "TccSyncModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "work(), loginAccount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->start()I

    move-result v1

    move v3, v1

    move v1, v10

    :goto_3
    if-eqz v3, :cond_c

    :cond_5
    move v2, v9

    :goto_4
    const-string v3, "TccSyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(),do,while leave time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->o:Z

    if-eqz v3, :cond_13

    const/4 v2, 0x4

    :cond_6
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->end()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->p:Ljava/lang/Thread;

    iget-boolean v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->o:Z

    if-eqz v3, :cond_7

    const/4 v2, 0x4

    :cond_7
    const-string v3, "TccSyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(),end cost:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v6, "TccSyncModel"

    const-string v7, "work use harcode Key"

    invoke-static {v6, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tccsync/ITccSyncDbAdapter;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->b:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter;->getSyncType()Lcom/tencent/tccsync/RemoteSync$SyncType;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v6, "TccSyncModel"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "work(), syncType:"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_a

    const-string v3, ""

    :cond_a
    invoke-virtual {v0, v5, v1, v3}, Lcom/tencent/tccsync/RemoteSync;->addDataSource(Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    :cond_c
    iget-boolean v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->o:Z

    if-nez v3, :cond_5

    const-string v3, "TccSyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(), do,while entry/asyncnext leave time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->getPostUrl()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->GetPostBuf()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_6
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->l()Z

    move-result v4

    if-eqz v4, :cond_d

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->w:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_15

    invoke-static {}, Lcom/tencent/qqpim/sdk/a/b;->b()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v1

    move-object v2, v1

    move-object v1, v8

    :cond_d
    :goto_7
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    :try_start_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/c/a/f;->b()V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->s:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;

    invoke-interface {v5, v1, v2, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;->onPostSyncData(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/qqpim/sdk/c/a/f;->a(Z)V

    const/16 v5, 0xc8

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eq v5, v6, :cond_e

    const/4 v1, 0x3

    const-string v2, "TccSyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(), postRes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v1

    move v1, v3

    goto/16 :goto_4

    :catch_0
    move-exception v4

    const-string v5, "TccSyncModel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "work(), GetPostBuf e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    :try_start_2
    const-string v4, "TccSyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(), post leave time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->m:J

    array-length v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->m:J

    const-string v4, "TccSyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(),POST UPLOAD TOTAL COUNT = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->m:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->o:Z

    if-eqz v4, :cond_f

    move v1, v3

    move v2, v9

    goto/16 :goto_4

    :cond_f
    if-nez v1, :cond_10

    const/4 v1, 0x3

    const-string v2, "TccSyncModel"

    const-string v4, "work(), respBody == null"

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    move v1, v3

    goto/16 :goto_4

    :cond_10
    iget-wide v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->n:J

    array-length v6, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->n:J

    const-string v4, "TccSyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(),POST DOWNLOAD TOTAL COUNT = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->n:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "TccSyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(),writeBackRecvBuf entry time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->l()Z

    move-result v4

    if-eqz v4, :cond_11

    iget v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->w:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_11

    invoke-static {}, Lcom/tencent/qqpim/sdk/a/b;->b()[B

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v1

    :cond_11
    invoke-virtual {v0, v1}, Lcom/tencent/tccsync/RemoteSync;->writeBackRecvBuf([B)V

    const-string v1, "TccSyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(),writeBackRecvBuf leave time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TccSyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work(),asyncNext entry time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->next()I

    move-result v1

    const-string v4, "TccSyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(),statucRemoteSync: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const/4 v4, 0x3

    if-eq v4, v1, :cond_12

    move v12, v3

    move v3, v1

    move v1, v12

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x3

    const-string v4, "TccSyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work(), Exception="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    move v1, v3

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->nextStep()I

    move-result v1

    goto :goto_8

    :cond_13
    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->getLastError()I

    move-result v3

    const-string v4, "TccSyncModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "work() lastError"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->r:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_14

    const/16 v1, -0x7dd7

    if-ne v3, v1, :cond_14

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_14
    if-nez v2, :cond_6

    if-eqz v3, :cond_6

    const/4 v2, 0x2

    const-string v1, "TccSyncModel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "work() lastError"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_15
    move-object v1, v8

    goto/16 :goto_7
.end method

.method private l()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/a/b;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->v:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->v:[B

    array-length v2, v2

    if-lez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TccSyncModel"

    const-string v2, "canUseDynamicKey yes!"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const-string v1, "TccSyncModel"

    const-string v2, "canUseDynamicKey no!"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->x:Z

    goto :goto_1
.end method

.method private static synthetic m()[I
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->y:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->values()[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SECSMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SOFT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->y:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->j()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->b(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->b(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;Ljava/util/List;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[BIZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->t:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->u:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->v:[B

    iput p4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->w:I

    iput-boolean p5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->x:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->j:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->k:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->l:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->g:I

    return v0
.end method

.method public final h()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->p:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->o:Z

    sput-boolean v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    return-void
.end method

.method public final handleESyncProgressNotify(II)V
    .locals 6

    const/4 v1, 0x0

    iget v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->c:I

    iget v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->d:I

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccsync/ITccSyncDbAdapter;

    invoke-interface {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter;->getSyncType()Lcom/tencent/tccsync/RemoteSync$SyncType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v0

    :cond_0
    const/16 v2, 0xca

    if-eq v2, v0, :cond_1

    const/16 v2, 0xcb

    if-ne v2, v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    iget v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->i:I

    iget v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->h:I

    :cond_2
    const/16 v1, 0x2003

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a(IIIILjava/lang/Object;)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final handleESyncShDbBeginScan(II)V
    .locals 6

    iput p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->c:I

    const-string v0, "TccSyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbBeginScan() param1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2(total)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2009

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->a(IIIILjava/lang/Object;)V

    return-void
.end method

.method public final handleESyncShDbClientAdd(II)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->j:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->j:I

    const-string v0, "TccSyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbClientAdd(), clientAddedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbClientDel(II)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->l:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->l:I

    const-string v0, "TccSyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbClientDel() clientDeletedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbClientMdf(II)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->k:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->k:I

    const-string v0, "TccSyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbClientMdf() clientModifiedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbScanOkNotify(II)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->d:I

    const-string v0, "testIndex"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbScanOkNotify() param1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentBackupIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbServerActionNotify(II)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->i:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->i:I

    const-string v0, "testIndex"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbServerActionNotify() param1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentRestoreIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbServerAdd(II)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->e:I

    const-string v0, "TccSyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbServerAdd() serverAddedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbServerDel(II)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->g:I

    const-string v0, "TccSyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbServerDel() serverDeletedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbServerMdf(II)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->f:I

    const-string v0, "TccSyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbServerMdf() serverModifiedNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShDbServerNumOfChange(II)V
    .locals 3

    iput p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->h:I

    const-string v0, "TccSyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShDbServerNumOfChange() param1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2(total)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleESyncShMapServerRefresh(II)V
    .locals 3

    const-string v0, "TccSyncModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleESyncShMapServerRefresh change to slow sync param1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/d;->r:I

    return v0
.end method
