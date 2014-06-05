.class public Lcom/tencent/qqpim/sdk/sync/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;


# static fields
.field private static volatile c:Lcom/tencent/qqpim/sdk/sync/a/a;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/a/b;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getQq_account()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "qq_account"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getQq_account()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "start"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getStart()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "end"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getEnd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "add_num"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getAdd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "modify_num"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getModify()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "delete_num"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getDelete()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "backup_or_restore"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getOperationType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "upload"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getUpload()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "download"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getDownload()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "succeed"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getSucceed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "client_add_num"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getClient_add_num()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "client_modify_num"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getClient_modify_num()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "client_delete_num"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getClient_delete_num()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "server_add_num"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getServer_add_num()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "server_modify_num"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getServer_modify_num()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "server_delete_num"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getServer_delete_num()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sim_sync_state"

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->getSimState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a()Lcom/tencent/qqpim/sdk/sync/a/a;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/a/a;->c:Lcom/tencent/qqpim/sdk/sync/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/a/a;->c:Lcom/tencent/qqpim/sdk/sync/a/a;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/tencent/qqpim/sdk/sync/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/a/a;->c:Lcom/tencent/qqpim/sdk/sync/a/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/a/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/a/a;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/a/a;->c:Lcom/tencent/qqpim/sdk/sync/a/a;

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/a/a;->c:Lcom/tencent/qqpim/sdk/sync/a/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->b()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_log"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->c()V

    move-object v0, v9

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qq_account = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;-><init>()V

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->set_id(I)V

    const-string v3, "qq_account"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setQq_account(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setType(I)V

    const-string v1, "start"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setStart(J)V

    const-string v1, "end"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setEnd(J)V

    const-string v1, "add_num"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setAdd(I)V

    const-string v1, "modify_num"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setModify(I)V

    const-string v1, "delete_num"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setDelete(I)V

    const-string v1, "backup_or_restore"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setOperationType(I)V

    const-string v1, "upload"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setUpload(J)V

    const-string v1, "download"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setDownload(J)V

    const-string v1, "succeed"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setSucceed(I)V

    const-string v1, "client_add_num"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setClient_add_num(I)V

    const-string v1, "client_modify_num"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setClient_modify_num(I)V

    const-string v1, "client_delete_num"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setClient_delete_num(I)V

    const-string v1, "server_add_num"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setServer_add_num(I)V

    const-string v1, "server_modify_num"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setServer_modify_num(I)V

    const-string v1, "server_delete_num"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setServer_delete_num(I)V

    const-string v1, "sim_sync_state"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setSimState(I)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->c()V

    move-object v0, v9

    goto/16 :goto_1
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/a/b;

    const-string v1, "sync_log.db"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/sdk/sync/a/b;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->a:Lcom/tencent/qqpim/sdk/sync/a/b;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->a:Lcom/tencent/qqpim/sdk/sync/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->a:Lcom/tencent/qqpim/sdk/sync/a/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addSyncLog(Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;)J
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->b()V

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/a/a;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sync_log"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x32

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v8

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/a/a;->deleteSyncLog(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public addSyncLog(Ljava/lang/String;IJJIIIIJJIIIIIII)J
    .locals 4

    new-instance v2, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;-><init>()V

    invoke-virtual {v2, p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setQq_account(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setType(I)V

    invoke-virtual {v2, p3, p4}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setStart(J)V

    invoke-virtual {v2, p5, p6}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setEnd(J)V

    invoke-virtual {v2, p7}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setAdd(I)V

    invoke-virtual {v2, p8}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setModify(I)V

    invoke-virtual {v2, p9}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setDelete(I)V

    invoke-virtual {v2, p10}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setOperationType(I)V

    move-wide v0, p11

    invoke-virtual {v2, v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setUpload(J)V

    move-wide/from16 v0, p13

    invoke-virtual {v2, v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setDownload(J)V

    move/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setSucceed(I)V

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setClient_add_num(I)V

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setClient_modify_num(I)V

    move/from16 v0, p18

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setClient_delete_num(I)V

    move/from16 v0, p19

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setServer_add_num(I)V

    move/from16 v0, p20

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setServer_modify_num(I)V

    move/from16 v0, p21

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setServer_delete_num(I)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setSimState(I)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpim/sdk/sync/a/a;->addSyncLog(Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;)J

    move-result-wide v2

    return-wide v2
.end method

.method public declared-synchronized deleteAllSyncLog()I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->b()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_log"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteAllSyncLog(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->b()V

    if-nez p1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sync_log"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qq_account = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteSyncLog(Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->b()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_log"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized getNewestLog(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/a/a;->getNewestSyncLogEntity(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    :try_start_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "SyncLogDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNewstLog(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNewestSyncLogEntity(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpim/sdk/sync/a/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSyncLog(Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;)I
    .locals 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->b()V

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/a/a;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "_id=?"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "sync_log"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->get_id()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :try_start_2
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SyncLogDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateSyncLog e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/a/a;->c()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
