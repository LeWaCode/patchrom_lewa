.class public interface abstract Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;
.super Ljava/lang/Object;


# virtual methods
.method public abstract collectRemoteSyncCheck(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract collectRemoteSyncDataChange(Ljava/lang/String;ZLjava/lang/String;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;
.end method

.method public abstract getLocalCalllogNum(Landroid/content/Context;)I
.end method

.method public abstract getLocalContactNum(Landroid/content/Context;)I
.end method

.method public abstract getLocalSmsNum(Landroid/content/Context;)I
.end method

.method public abstract getLocalSmsNum(Landroid/content/Context;Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)I
.end method

.method public abstract getRemoteCalllogNum()I
.end method

.method public abstract getRemoteContactNum()I
.end method

.method public abstract getRemoteSmsNum()I
.end method

.method public abstract syncCollectLocalDataChange(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
.end method

.method public abstract syncCollectLocalDataChange(ILjava/lang/String;Z)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
.end method

.method public abstract syncGetLocalAddAndDel(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)Z
.end method
