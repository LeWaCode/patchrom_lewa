.class public interface abstract Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;
.super Ljava/lang/Object;


# static fields
.field public static final SYNC_RES_CANCEL:I = 0x2

.field public static final SYNC_RES_FAIL:I = 0x0

.field public static final SYNC_RES_SUCCEED:I = 0x1

.field public static final TYPE_BACKUP:I = 0x0

.field public static final TYPE_RECOVER:I = 0x1

.field public static final TYPE_SYNC_CALENDAR:I = 0x8

.field public static final TYPE_SYNC_CALLLOG:I = 0x2

.field public static final TYPE_SYNC_CONTACT:I = 0x0

.field public static final TYPE_SYNC_MMS:I = 0xc

.field public static final TYPE_SYNC_NOTE:I = 0xb

.field public static final TYPE_SYNC_SECSMS:I = 0x7

.field public static final TYPE_SYNC_SMS:I = 0x1

.field public static final TYPE_SYNC_SOFT:I = 0x4

.field public static final TYPE_SYNC_TCNOTE:I = 0xa

.field public static final TYPE_SYNC_TODO:I = 0x9

.field public static final TYPE_SYNC_UNKONW:I = -0x1

.field public static final TYPE_SYNC_WBLIST:I = 0x5

.field public static final TYPE_TWOWAY:I = 0x2

.field public static final TYPE_UNKNOW:I = -0x1


# virtual methods
.method public abstract addSyncLog(Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;)J
.end method

.method public abstract addSyncLog(Ljava/lang/String;IJJIIIIJJIIIIIII)J
.end method

.method public abstract deleteAllSyncLog()I
.end method

.method public abstract deleteAllSyncLog(Ljava/lang/String;)I
.end method

.method public abstract deleteSyncLog(Ljava/lang/String;)I
.end method

.method public abstract getNewestLog(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;
.end method

.method public abstract getNewestSyncLogEntity(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract updateSyncLog(Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;)I
.end method
