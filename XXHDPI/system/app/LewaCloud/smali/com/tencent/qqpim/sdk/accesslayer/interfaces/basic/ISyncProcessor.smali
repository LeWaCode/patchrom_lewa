.class public interface abstract Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addSyncTask(Lcom/tencent/qqpim/sdk/defines/SyncTask;)Z
.end method

.method public abstract initSyncSettings(ILjava/lang/String;Ljava/lang/String;[BIII)Z
.end method

.method public abstract initSyncSettings(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIII)Z
.end method

.method public abstract initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;II)Z
.end method

.method public abstract initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
.end method

.method public abstract stopSync()V
.end method

.method public abstract syncData()V
.end method

.method public abstract useExternalNetEngine(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V
.end method
