.class public Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;
.super Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;


# static fields
.field private static final TAG:Ljava/lang/String; = "SYSCallLogDaoV1"


# instance fields
.field private final context:Landroid/content/Context;

.field private htcRawContactIDColumnExist:Z

.field private mHtcExtendedColumnName:Ljava/lang/String;

.field private model:Lcom/tencent/qqpim/sdk/sync/calllog/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/calllog/a;->b:Lcom/tencent/qqpim/sdk/sync/calllog/a;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->model:Lcom/tencent/qqpim/sdk/sync/calllog/a;

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->initHTCExtentedColumn()V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->checkHTCExtendedColumn()V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->context:Landroid/content/Context;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/calllog/a;->a:Lcom/tencent/qqpim/sdk/sync/calllog/a;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->model:Lcom/tencent/qqpim/sdk/sync/calllog/a;

    :cond_0
    return-void
.end method

.method private checkHTCExtendedColumn()V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->mHtcExtendedColumnName:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    const-string v2, "SYSCallLogDaoV1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkHTCExtendedColumn(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method private doReadCalllogs(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v0, "SYSCallLogDaoV1"

    const-string v1, "batch query calllogs enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v2, v4

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "SYSCallLogDaoV1"

    const-string v1, "batch query calllogs leave"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance v5, Lcom/tencent/qqpim/sdk/object/e;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/object/e;-><init>()V

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v0, "-1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "TEL"

    invoke-virtual {v0, v9, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/tencent/qqpim/sdk/object/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    move-object v1, v0

    :goto_1
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->context:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryNameById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tencent/qqpim/sdk/object/e;->setId(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p1, v0, v1, v5}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->method(Landroid/database/Cursor;Ljava/lang/String;Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/e;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->model:Lcom/tencent/qqpim/sdk/sync/calllog/a;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/calllog/a;->a:Lcom/tencent/qqpim/sdk/sync/calllog/a;

    if-ne v0, v7, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->context:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/g;

    if-eqz v0, :cond_5

    invoke-interface {v0, v6}, Lcom/tencent/qqpim/sdk/interfaces/g;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tencent/qqpim/sdk/object/e;->setId(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_3

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method private initHTCExtentedColumn()V
    .locals 1

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "person"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->mHtcExtendedColumnName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "raw_contact_id"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->mHtcExtendedColumnName:Ljava/lang/String;

    goto :goto_0
.end method

.method private method(Landroid/database/Cursor;Ljava/lang/String;Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/e;)V
    .locals 8

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v7, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "N"

    invoke-virtual {v0, v3, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v7, p2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/tencent/qqpim/sdk/object/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :cond_0
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v2, "CALLTYPE"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "STARTTIME"

    invoke-virtual {v0, v3, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getUTCStringFromTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/tencent/qqpim/sdk/object/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "DURATION"

    invoke-virtual {v0, v3, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/tencent/qqpim/sdk/object/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "ENDTIME"

    invoke-virtual {v0, v3, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getUTCStringFromTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/tencent/qqpim/sdk/object/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    return-void

    :pswitch_0
    const-string v0, "INCOMING"

    invoke-virtual {v1, v7, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p4, v1}, Lcom/tencent/qqpim/sdk/object/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "OUTGOING"

    invoke-virtual {v1, v7, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p4, v1}, Lcom/tencent/qqpim/sdk/object/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "MISS"

    invoke-virtual {v1, v7, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {p4, v1}, Lcom/tencent/qqpim/sdk/object/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public add(Ljava/util/List;Ljava/util/List;[I)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    goto :goto_1
.end method

.method public delete(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v1, "SYSCallLogDaoV1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete leave delcount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "SYSCallLogDaoV1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_1
.end method

.method public getAllEntityId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "date >= ? AND date <= ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    move v0, v7

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v8

    :cond_2
    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_3
    const-string v2, "SYSCallLogDaoV1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllEntityId  IllegalArgumentException  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_3
    :try_start_4
    const-string v1, "SYSCallLogDaoV1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityId Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lez v0, :cond_3

    const/4 v6, 0x1

    move v0, v6

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string v1, "SYSCallLogDaoV1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExisted  ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v7

    :goto_2
    :try_start_2
    const-string v1, "SYSCallLogDaoV1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExisted  IllegalArgumentException strEntityId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "SYSCallLogDaoV1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isExisted  ret = false"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v1, "SYSCallLogDaoV1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExisted  ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "duration"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->mHtcExtendedColumnName:Ljava/lang/String;

    aput-object v3, v2, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    new-instance v1, Lcom/tencent/qqpim/sdk/object/e;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/e;-><init>()V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/object/e;->setId(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v0, "-1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "TEL"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/e;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    move-object v3, v0

    :goto_1
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryNameById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v4, v0, v3, v1}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->method(Landroid/database/Cursor;Ljava/lang/String;Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/e;)V

    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v1

    :goto_3
    return-object v0

    :cond_2
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "duration"

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "SYSCallLogDaoV1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query IllegalArgumentException strEntityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->model:Lcom/tencent/qqpim/sdk/sync/calllog/a;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/calllog/a;->a:Lcom/tencent/qqpim/sdk/sync/calllog/a;

    if-ne v0, v7, :cond_5

    :cond_4
    const/4 v0, 0x1

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/g;

    if-eqz v0, :cond_5

    invoke-interface {v0, v5}, Lcom/tencent/qqpim/sdk/interfaces/g;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v0, "SYSCallLogDaoV1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query Throwable strEntityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move-object v3, v6

    goto/16 :goto_1
.end method

.method public query(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->getAllEntityId(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 7

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->htcRawContactIDColumnExist:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v6

    const-string v0, "name"

    aput-object v0, v2, v1

    const-string v0, "type"

    aput-object v0, v2, v3

    const-string v0, "date"

    aput-object v0, v2, v4

    const-string v0, "duration"

    aput-object v0, v2, v5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->mHtcExtendedColumnName:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "_id"

    aput-object v1, v2, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->getSelectionStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->doReadCalllogs(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v6

    const-string v0, "name"

    aput-object v0, v2, v1

    const-string v0, "type"

    aput-object v0, v2, v3

    const-string v0, "date"

    aput-object v0, v2, v4

    const-string v0, "duration"

    aput-object v0, v2, v5

    const/4 v0, 0x5

    const-string v1, "_id"

    aput-object v1, v2, v0

    goto :goto_0

    :cond_1
    new-array v1, v6, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    goto :goto_1
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryNumber()I
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method
