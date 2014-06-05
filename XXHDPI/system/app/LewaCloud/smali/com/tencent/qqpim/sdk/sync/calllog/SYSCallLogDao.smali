.class public abstract Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;


# static fields
.field private static final TAG:Ljava/lang/String; = "SYSCallLogDao"


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;

.field protected context:Landroid/content/Context;

.field protected htcRawContactIDColumnExist:Z

.field protected mHtcExtendedColumnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->htcRawContactIDColumnExist:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;
    .locals 3

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " IDao callLog is null model is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV1;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->c(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV2;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;
    .locals 17

    const-string v1, "SYSCallLogDao"

    const-string v2, "add enter "

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v5, :cond_3

    const-string v1, "number"

    const-string v2, "-1"

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v8, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-eqz v1, :cond_4

    cmp-long v1, v3, v6

    if-gez v1, :cond_4

    const-string v1, "duration"

    sub-long v2, v6, v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v8, 0x1

    :cond_4
    if-nez v8, :cond_5

    const-string v1, "duration"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    const-string v2, "SYSCallLogDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add leave strEntityId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v11

    if-eqz v11, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "TEL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-wide v13, v3

    move v4, v2

    move-wide v2, v13

    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "ENDTIME"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v5

    move v7, v8

    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    move v8, v7

    move-wide v13, v5

    move-wide v6, v13

    move v5, v4

    move-wide v15, v2

    move-wide v3, v15

    move-object v2, v1

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "N"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->htcRawContactIDColumnExist:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->context:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/interfaces/g;

    if-eqz v1, :cond_8

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/g;->lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->mHtcExtendedColumnName:Ljava/lang/String;

    invoke-virtual {v10, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v9, 0x0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->context:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/interfaces/g;

    if-eqz v1, :cond_12

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/g;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    :cond_a
    const-string v9, "name"

    invoke-virtual {v10, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    move-wide v13, v3

    move-wide v2, v13

    move v4, v5

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "STARTTIME"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v3

    const-string v1, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_c
    move-object v1, v2

    move-wide v13, v3

    move-wide v2, v13

    move v4, v5

    goto/16 :goto_3

    :cond_d
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "DURATION"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    const-string v8, "duration"

    const/4 v9, 0x2

    invoke-virtual {v11, v9}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v6

    move v7, v5

    move-wide v5, v13

    goto/16 :goto_4

    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "CALLTYPE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "INCOMING"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "type"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-wide v13, v6

    move-wide v5, v13

    move v7, v8

    goto/16 :goto_4

    :cond_f
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "OUTGOING"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "type"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-wide v13, v6

    move-wide v5, v13

    move v7, v8

    goto/16 :goto_4

    :cond_10
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "MISS"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "type"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_11
    move-wide v13, v6

    move-wide v5, v13

    move v7, v8

    goto/16 :goto_4

    :catch_0
    move-exception v2

    const-string v3, "SYSCallLogDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add Throwable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    move-object v1, v9

    goto/16 :goto_5
.end method

.method public delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteAll()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    return-object v0
.end method

.method public abstract getAllEntityId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end method

.method public getAllEntityId(Ljava/util/List;Z)Ljava/util/List;
    .locals 12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    if-eqz p2, :cond_c

    if-nez p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "If isQueryByNum is true, selection can not be null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    const-string v1, "SYSCallLogDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityId(String[] selectionArgs, boolean isQueryByNum):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    div-int/lit16 v1, v10, 0x384

    rem-int/lit16 v11, v10, 0x384

    if-lez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0xa1b8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v0

    move v0, v1

    :goto_3
    add-int/lit8 v9, v0, -0x1

    if-gez v9, :cond_5

    if-lez v11, :cond_11

    const/4 v0, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v11, -0x1

    move v1, v0

    :goto_4
    if-gtz v1, :cond_a

    const-string v0, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",number)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_5
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_6
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    goto :goto_2

    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v11, 0x2e

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v0

    move v0, v1

    goto :goto_3

    :cond_5
    new-array v2, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    const/16 v0, 0x384

    if-lt v1, v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/16 v0, 0x383

    :goto_8
    if-gtz v0, :cond_8

    const-string v0, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",number)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v0, 0x0

    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v9

    goto/16 :goto_3

    :cond_7
    add-int v0, v11, v1

    mul-int/lit16 v3, v9, 0x384

    add-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_8
    const-string v1, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",number) OR "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    const-string v0, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",number) OR "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_4

    :cond_b
    :try_start_5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_c
    :try_start_6
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_10

    const/4 v0, 0x0

    :goto_a
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v1

    if-lt v0, v1, :cond_e

    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    move-object v0, v7

    goto/16 :goto_2

    :cond_e
    :try_start_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_b
    :try_start_8
    const-string v1, "SYSCallLogDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllEntityId(String[] selectionArgs, boolean isQueryByNum):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_c
    if-eqz v6, :cond_f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0

    :cond_10
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_c

    :catch_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_b

    :catch_3
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_11
    move-object v0, v6

    goto/16 :goto_6
.end method

.method protected getSelectionStrings([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    add-int/lit8 v2, v0, -0x1

    array-length v0, p1

    if-lez v0, :cond_1

    const-string v0, "_id IN ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-le v0, v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v0, v2, :cond_4

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 14

    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const-string v0, "SYSCallLogDao"

    const-string v1, "update enter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SYSCallLogDao"

    const-string v1, "update leave IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "SYSCallLogDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update  strEntityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-wide v0, v7

    move-wide v2, v7

    move v6, v4

    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v11

    if-eqz v11, :cond_5

    if-nez v6, :cond_3

    const-string v5, "number"

    const-string v6, "-1"

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v4, :cond_4

    cmp-long v4, v2, v7

    if-eqz v4, :cond_4

    cmp-long v4, v0, v7

    if-eqz v4, :cond_4

    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    const-string v4, "duration"

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    const-string v0, "SYSCallLogDao"

    const-string v1, "update leave IDao.ENUM_IDaoReturnValue.ACTION_SUCCEED"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v11

    if-eqz v11, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "TEL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v6, "number"

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    :cond_6
    :goto_2
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "SYSCallLogDao"

    const-string v1, "update IllegalArgumentException"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "N"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "name"

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "STARTTIME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v2

    const-string v11, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ENDTIME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    :cond_a
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "DURATION"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v4, "duration"

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_2

    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "CALLTYPE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "INCOMING"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string v11, "type"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_c
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "OUTGOING"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v11, "type"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_d
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "OUTGOING"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "type"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_e
    const-string v0, "SYSCallLogDao"

    const-string v1, "update leave IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public update(Ljava/util/List;[I)Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p2, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDao;->update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->convertDaoRetToEngineRet(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;)I

    move-result v0

    aput v0, p2, v1

    goto :goto_1
.end method
