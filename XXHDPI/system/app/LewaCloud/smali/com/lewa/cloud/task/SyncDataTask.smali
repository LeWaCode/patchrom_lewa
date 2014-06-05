.class public Lcom/lewa/cloud/task/SyncDataTask;
.super Landroid/os/AsyncTask;
.source "SyncDataTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECK_PIM:I = -0x64

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mByTime:Z

.field private mChangeNum:I

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mContext:Landroid/content/Context;

.field private mDir:I

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mInfo:Ljava/lang/String;

.field private mPercent:Landroid/widget/TextView;

.field private mPercentFormat:Ljava/lang/String;

.field private mPimSyncLatch:Ljava/util/concurrent/CountDownLatch;

.field private mProgress:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSyncAll:Z

.field private mSyncDialog:Landroid/app/AlertDialog;

.field private mSyncDuration:I

.field private mTime:J

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/lewa/cloud/task/SyncDataTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/task/SyncDataTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/app/AlertDialog;IIZZI)V
    .locals 2
    .parameter "context"
    .parameter "fm"
    .parameter "percent"
    .parameter "progress"
    .parameter "dialog"
    .parameter "type"
    .parameter "direction"
    .parameter "byTime"
    .parameter "syncAll"
    .parameter "syncDuration"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/lewa/cloud/task/SyncDataTask;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mFragmentManager:Landroid/app/FragmentManager;

    .line 52
    iput-object p3, p0, Lcom/lewa/cloud/task/SyncDataTask;->mPercent:Landroid/widget/TextView;

    .line 53
    iput-object p4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mProgressBar:Landroid/widget/ProgressBar;

    .line 54
    iput-object p5, p0, Lcom/lewa/cloud/task/SyncDataTask;->mSyncDialog:Landroid/app/AlertDialog;

    .line 55
    iput p6, p0, Lcom/lewa/cloud/task/SyncDataTask;->mType:I

    .line 56
    iput p7, p0, Lcom/lewa/cloud/task/SyncDataTask;->mDir:I

    .line 57
    iput-boolean p8, p0, Lcom/lewa/cloud/task/SyncDataTask;->mByTime:Z

    .line 58
    iput-boolean p9, p0, Lcom/lewa/cloud/task/SyncDataTask;->mSyncAll:Z

    .line 59
    iput p10, p0, Lcom/lewa/cloud/task/SyncDataTask;->mSyncDuration:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mProgress:I

    .line 61
    iget-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mContext:Landroid/content/Context;

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mPercentFormat:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v0}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 63
    return-void
.end method

.method private dealwithExpired()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method private dealwithIdentifyErr()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method private dealwithNetworkDisconnection()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lewa/cloud/task/SyncDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    return-void
.end method

.method private dealwithTimeOut()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method private doSync()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 186
    iget-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->lockSync()Z

    .line 187
    iget-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNeedCheckPim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mPimSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/lewa/cloud/task/SyncDataTask;->publishProgress([Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mPimSyncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 193
    iget-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getPimPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 198
    .local v7, pim:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 199
    iget-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0, v7}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->gotoVerityPim(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    .line 211
    .end local v7           #pim:Ljava/lang/String;
    :goto_0
    return v0

    .line 195
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/InterruptedException;
    move v0, v8

    .line 196
    goto :goto_0

    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v7       #pim:Ljava/lang/String;
    :cond_0
    move v0, v8

    .line 204
    goto :goto_0

    .line 208
    .end local v7           #pim:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v1, p0, Lcom/lewa/cloud/task/SyncDataTask;->mType:I

    iget v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mDir:I

    iget-boolean v3, p0, Lcom/lewa/cloud/task/SyncDataTask;->mByTime:Z

    iget-boolean v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mSyncAll:Z

    iget v5, p0, Lcom/lewa/cloud/task/SyncDataTask;->mSyncDuration:I

    invoke-virtual/range {v0 .. v5}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->doSync(IIZZI)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    .line 209
    goto :goto_0

    :cond_2
    move v0, v9

    .line 211
    goto :goto_0
.end method

.method private requestAuthorization()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getUserIdentity()I

    move-result v1

    .line 74
    .local v1, result:I
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    if-eqz v1, :cond_0

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    .end local v1           #result:I
    :goto_0
    return-object v2

    .line 78
    .restart local v1       #result:I
    :cond_0
    invoke-direct {p0}, Lcom/lewa/cloud/task/SyncDataTask;->doSync()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mTime:J

    .line 82
    :goto_1
    iget v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mProgress:I

    iget-object v3, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 86
    :cond_2
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 87
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getProgress()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mProgress:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v2, -0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #result:I
    :cond_3
    iget v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 115
    :goto_2
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 95
    :pswitch_0
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateContactData()Z

    goto :goto_2

    .line 98
    :pswitch_1
    iget v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mDir:I

    if-ne v2, v6, :cond_4

    .line 99
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getRemoteSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    move-result-object v2

    iget v2, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    iput v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mChangeNum:I

    goto :goto_2

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getLocalSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    move-result-object v2

    iget v2, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    iput v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mChangeNum:I

    goto :goto_2

    .line 106
    :pswitch_2
    iget v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mDir:I

    if-ne v2, v6, :cond_5

    .line 107
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getRemoteSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    move-result-object v2

    iget v2, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    iput v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mChangeNum:I

    .line 112
    :goto_3
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateCallLogData()Z

    goto :goto_2

    .line 110
    :cond_5
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getLocalSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    move-result-object v2

    iget v2, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    iput v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mChangeNum:I

    goto :goto_3

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/task/SyncDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 121
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 125
    sget-object v4, Lcom/lewa/cloud/task/SyncDataTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostExecute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 140
    :goto_0
    iget-object v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mSyncDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 141
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 161
    :pswitch_0
    iget v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mType:I

    packed-switch v4, :pswitch_data_2

    .line 173
    :goto_1
    iget-object v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v4}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->unlockSync()Z

    .line 174
    :goto_2
    return-void

    .line 128
    :pswitch_1
    iget-object v1, p0, Lcom/lewa/cloud/task/SyncDataTask;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/lewa/cloud/ContactsSyncActivity;

    .line 129
    .local v1, contactsActivity:Lcom/lewa/cloud/ContactsSyncActivity;
    invoke-virtual {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->endSync()V

    goto :goto_0

    .line 132
    .end local v1           #contactsActivity:Lcom/lewa/cloud/ContactsSyncActivity;
    :pswitch_2
    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/lewa/cloud/SmsSyncDetailActivity;

    .line 133
    .local v2, smsActivity:Lcom/lewa/cloud/SmsSyncDetailActivity;
    invoke-virtual {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->endSync()V

    goto :goto_0

    .line 136
    .end local v2           #smsActivity:Lcom/lewa/cloud/SmsSyncDetailActivity;
    :pswitch_3
    iget-object v0, p0, Lcom/lewa/cloud/task/SyncDataTask;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lewa/cloud/CallSyncActivity;

    .line 137
    .local v0, callLogActivity:Lcom/lewa/cloud/CallSyncActivity;
    invoke-virtual {v0}, Lcom/lewa/cloud/CallSyncActivity;->endSync()V

    goto :goto_0

    .line 145
    .end local v0           #callLogActivity:Lcom/lewa/cloud/CallSyncActivity;
    :pswitch_4
    invoke-direct {p0}, Lcom/lewa/cloud/task/SyncDataTask;->dealwithExpired()V

    goto :goto_2

    .line 148
    :pswitch_5
    invoke-direct {p0}, Lcom/lewa/cloud/task/SyncDataTask;->requestAuthorization()V

    goto :goto_2

    .line 151
    :pswitch_6
    invoke-direct {p0}, Lcom/lewa/cloud/task/SyncDataTask;->dealwithTimeOut()V

    goto :goto_2

    .line 154
    :pswitch_7
    invoke-direct {p0}, Lcom/lewa/cloud/task/SyncDataTask;->dealwithIdentifyErr()V

    goto :goto_2

    .line 157
    :pswitch_8
    invoke-direct {p0}, Lcom/lewa/cloud/task/SyncDataTask;->dealwithNetworkDisconnection()V

    goto :goto_2

    .line 163
    :pswitch_9
    iget-object v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mContext:Landroid/content/Context;

    const v5, 0x7f070043

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 167
    .end local v3           #title:Ljava/lang/String;
    :pswitch_a
    iget-object v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mFragmentManager:Landroid/app/FragmentManager;

    iget v5, p0, Lcom/lewa/cloud/task/SyncDataTask;->mType:I

    iget v6, p0, Lcom/lewa/cloud/task/SyncDataTask;->mDir:I

    iget v7, p0, Lcom/lewa/cloud/task/SyncDataTask;->mChangeNum:I

    invoke-static {v4, v5, v6, v7}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->show(Landroid/app/FragmentManager;III)V

    goto :goto_1

    .line 170
    :pswitch_b
    iget-object v4, p0, Lcom/lewa/cloud/task/SyncDataTask;->mFragmentManager:Landroid/app/FragmentManager;

    iget v5, p0, Lcom/lewa/cloud/task/SyncDataTask;->mType:I

    iget v6, p0, Lcom/lewa/cloud/task/SyncDataTask;->mDir:I

    iget v7, p0, Lcom/lewa/cloud/task/SyncDataTask;->mChangeNum:I

    invoke-static {v4, v5, v6, v7}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->show(Landroid/app/FragmentManager;III)V

    goto :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch -0x5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 161
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/task/SyncDataTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 178
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    .local v0, progress:I
    sget-object v1, Lcom/lewa/cloud/task/SyncDataTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/cloud/task/SyncDataTask;->mPimSyncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/lewa/cloud/task/SyncDataTask;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v2, p0, Lcom/lewa/cloud/task/SyncDataTask;->mPimSyncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1, v2}, Lcom/lewa/cloud/fragment/passwordFragment;->show(Landroid/app/FragmentManager;Ljava/util/concurrent/CountDownLatch;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/task/SyncDataTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
