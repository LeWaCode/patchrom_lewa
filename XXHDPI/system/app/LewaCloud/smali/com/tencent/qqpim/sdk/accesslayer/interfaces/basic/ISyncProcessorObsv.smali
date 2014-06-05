.class public interface abstract Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;
.super Ljava/lang/Object;


# static fields
.field public static final TASK_CALLLOG_BACKUP:I = 0x6

.field public static final TASK_CALLLOG_RESTORE:I = 0x7

.field public static final TASK_CONTACT_BACKUP_ALL:I = 0x1

.field public static final TASK_CONTACT_RESTORE_ALL:I = 0x2

.field public static final TASK_CONTACT_TWO_WAY_SLOW_SYNC:I = 0xc

.field public static final TASK_CONTACT_TWO_WAY_SYNC:I = 0x3

.field public static final TASK_EMPTY:I = 0x0

.field public static final TASK_SMS_BACKUP:I = 0x4

.field public static final TASK_SMS_RESTORE:I = 0x5

.field public static final TASK_SOFT_BACKUP:I = 0xa

.field public static final TASK_SOFT_RESTORE:I = 0xb


# virtual methods
.method public abstract onPostSyncData(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B
.end method

.method public abstract onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
.end method
