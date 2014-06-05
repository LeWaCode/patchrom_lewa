.class public abstract Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
.super Ljava/lang/Object;
.source "CloudManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/manager/CloudManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CloudManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;,
        Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;
    }
.end annotation


# static fields
.field public static final BACKUP_STATE:I = 0x2

.field public static final RESTORE_BOTH:I = 0x3

.field public static final RESTORE_NONE:I = 0x0

.field public static final RESTORE_STATE:I = 0x1

.field public static final RESULT_DEVICE_LIMIT:I = -0x2

.field public static final RESULT_IDENTYFY_ERR:I = -0x4

.field public static final RESULT_LOGINKEY_EXPIRED:I = -0x1

.field public static final RESULT_NETWORK_ERR:I = -0x5

.field public static final RESULT_PARAM_ERR:I = -0x6

.field public static final RESULT_SUCC:I = 0x0

.field public static final RESULT_TIME_OUT:I = -0x3

.field public static final RESULT_UNKNOW_ERR:I = -0x7

.field public static final SYNC_BY_TIME_ALL:I = 0x5

.field public static final SYNC_BY_TIME_LAST_HALF_YEAR:I = 0x3

.field public static final SYNC_BY_TIME_LAST_MONTH:I = 0x1

.field public static final SYNC_BY_TIME_LAST_THREE_MONTH:I = 0x2

.field public static final SYNC_BY_TIME_LAST_YEAR:I = 0x4

.field public static final SYNC_SMS_BY_CONTACT:I = 0x1

.field public static final SYNC_SMS_BY_NONE:I = 0x0

.field public static final SYNC_SMS_BY_TIME:I = 0x2

.field public static final mProgressMax:I = 0x64


# instance fields
.field public mAutoSyncProgress:I

.field public mCallLogLocalNum:I

.field public mCallLogStoreNum:I

.field public mCallsSyncDate:Ljava/lang/String;

.field public mCallsSyncDateState:I

.field public mContactAutoSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

.field public mContactLocalNum:I

.field public mContactStoreNum:I

.field public mContactsSyncDate:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mHelpInfo:Landroid/text/Spanned;

.field public volatile mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

.field public volatile mLocalSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

.field protected mNetworkState:I

.field protected mPimPassword:Ljava/lang/String;

.field protected mPowerByDraw:Landroid/graphics/drawable/Drawable;

.field public mProgress:I

.field public mRegularRemid:Z

.field public volatile mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

.field public volatile mRemoteSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

.field public mResultType:I

.field protected mRetryHelpInfo:Landroid/text/Spanned;

.field protected mSDKVersion:I

.field protected mSmsDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSmsDataUpdateType:I

.field public mSmsLocalNum:I

.field public mSmsStoreNum:I

.field public mSmsSyncDate:Ljava/lang/String;

.field public mSmsSyncDateState:I

.field protected mSyncByTime:Z

.field public mSyncContactsAnytime:Z

.field protected mSyncDir:I

.field public mSyncImgOnlyWifi:Z

.field public mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

.field public mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

.field protected mSyncType:I

.field public mUpdateHandler:Landroid/os/Handler;

.field public mUsedDay:I

.field public mUsedMonth:I

.field public mVerifyErr:I

.field public mVerifyOk:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-direct {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;-><init>()V

    iput-object v0, p0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    .line 84
    new-instance v0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-direct {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;-><init>()V

    iput-object v0, p0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    .line 85
    new-instance v0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    invoke-direct {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;-><init>()V

    iput-object v0, p0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mLocalSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    .line 86
    new-instance v0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    invoke-direct {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;-><init>()V

    iput-object v0, p0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mRemoteSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSmsDataList:Ljava/util/List;

    .line 109
    iput-object p1, p0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method


# virtual methods
.method public abstract autoSyncProgressChanged(Landroid/os/Message;)V
.end method

.method public abstract checkContactLocalDataChanged()Z
.end method

.method public abstract doContactAutoSync()Z
.end method

.method public abstract doSync(IIZZI)Z
.end method

.method public abstract getAccountImg()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getAccountNickname()Ljava/lang/String;
.end method

.method public abstract getAutoSyncProgress()I
.end method

.method public abstract getCallLogLocalNum()I
.end method

.method public abstract getCallLogStoreNum()I
.end method

.method public abstract getCallLogSyncTimeInfo()Ljava/lang/String;
.end method

.method public abstract getCallSyncHelpInfo()Landroid/text/Spanned;
.end method

.method public abstract getContactLocalNum()I
.end method

.method public abstract getContactStoreNum()I
.end method

.method public abstract getContactSyncHelpInfo()Landroid/text/Spanned;
.end method

.method public abstract getContactSyncTimeInfo()Ljava/lang/String;
.end method

.method public abstract getLocalSmsNumByTime()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;
.end method

.method public abstract getLocalSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;
.end method

.method public abstract getLogInHelpInfo()Landroid/text/Spanned;
.end method

.method public abstract getLogInState()I
.end method

.method public abstract getLogRetryHelpInfo()Landroid/text/Spanned;
.end method

.method public abstract getPimPassword()Ljava/lang/String;
.end method

.method public abstract getPowerBySource()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getProgress()I
.end method

.method public abstract getRemoteSmsNumByTime()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;
.end method

.method public abstract getRemoteSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;
.end method

.method public getResultType()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mResultType:I

    return v0
.end method

.method public abstract getSDKVersion()I
.end method

.method public abstract getSmsData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmsLocalNum()I
.end method

.method public abstract getSmsStoreNum()I
.end method

.method public abstract getSmsSyncHelpInfo()Landroid/text/Spanned;
.end method

.method public abstract getSmsSyncTimeInfo()Ljava/lang/String;
.end method

.method public abstract getUsedDay()I
.end method

.method public abstract getUsedMonth()I
.end method

.method public abstract getUserIdentity()I
.end method

.method public abstract gotoVerityPim(Ljava/lang/String;)Z
.end method

.method public abstract init()Z
.end method

.method public abstract isNeedCheckPim()Z
.end method

.method public abstract isNetworkConnected()Z
.end method

.method public abstract isWifiNetwork()Z
.end method

.method public abstract lockSync()Z
.end method

.method public abstract logOut()V
.end method

.method public abstract progressChanged(Landroid/os/Message;)V
.end method

.method public abstract setAutoSyncContactObsv(Lcom/lewa/cloud/manager/SyncProcessorObsv;)V
.end method

.method public abstract setPimPassword(Ljava/lang/String;)Z
.end method

.method public abstract setProgressObsv(Lcom/lewa/cloud/manager/SyncProcessorObsv;)V
.end method

.method public abstract setSyncResultObsv(Lcom/lewa/cloud/manager/SyncResultObsv;)V
.end method

.method public abstract startLoginActivity(Landroid/app/Activity;)V
.end method

.method public abstract unlockSync()Z
.end method

.method public abstract updateAccountInfo()Z
.end method

.method public abstract updateAccountInfoFinish(Landroid/os/Message;)Z
.end method

.method public abstract updateCallLogData()Z
.end method

.method public abstract updateCallLogDataFinish(Landroid/os/Message;)Z
.end method

.method public abstract updateContactData()Z
.end method

.method public abstract updateContactDataFinish(Landroid/os/Message;)Z
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public abstract updatePrimeInfo()Z
.end method

.method public abstract updatePrimeInfoFinish(Landroid/os/Message;)Z
.end method

.method public abstract updateSmsData(I)Z
.end method

.method public abstract updateSmsDataFinish(Landroid/os/Message;)Z
.end method

.method public abstract updateSmsDurationData()Z
.end method

.method public abstract updateSmsSyncRecordData()Z
.end method

.method public abstract updateSmsSyncRecordDataFinish(Landroid/os/Message;)Z
.end method
