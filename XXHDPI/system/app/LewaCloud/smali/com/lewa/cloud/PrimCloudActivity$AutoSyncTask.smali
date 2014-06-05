.class public Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;
.super Landroid/os/AsyncTask;
.source "PrimCloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/PrimCloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoSyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgress:I

.field private mTime:J

.field final synthetic this$0:Lcom/lewa/cloud/PrimCloudActivity;


# direct methods
.method public constructor <init>(Lcom/lewa/cloud/PrimCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 162
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 168
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->mTime:J

    .line 169
    iget-object v2, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->lockSync()Z

    .line 170
    iget-object v2, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getUserIdentity()I

    move-result v1

    .line 171
    .local v1, result:I
    iget-object v2, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    if-eqz v1, :cond_1

    .line 172
    sget-object v2, Lcom/lewa/cloud/PrimCloudActivity;->TAG:Ljava/lang/String;

    const-string v3, "auto sync identity err."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1           #result:I
    :cond_0
    :goto_0
    return-object v6

    .line 175
    .restart local v1       #result:I
    :cond_1
    iget-object v2, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->doContactAutoSync()Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    sget-object v2, Lcom/lewa/cloud/PrimCloudActivity;->TAG:Ljava/lang/String;

    const-string v3, "auto sync err."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #result:I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getAutoSyncProgress()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->mProgress:I

    .line 184
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 186
    sget-object v2, Lcom/lewa/cloud/PrimCloudActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact auto sync progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->mProgress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_3
    iget v2, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->mProgress:I

    iget-object v3, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v3}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->mTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 162
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v0}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->unlockSync()Z

    .line 198
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    iget-object v0, v0, Lcom/lewa/cloud/PrimCloudActivity;->mConfigHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    iget-object v1, v1, Lcom/lewa/cloud/PrimCloudActivity;->mConfigHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    return-void
.end method
