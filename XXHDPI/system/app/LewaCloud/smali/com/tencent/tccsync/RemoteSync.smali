.class public Lcom/tencent/tccsync/RemoteSync;
.super Ljava/lang/Object;


# static fields
.field public static final TCC_ERR_NONE:I = 0x0

.field public static final TCC_ERR_SYNC_ALERT_FAIL:I = -0x7dd9

.field public static final TCC_ERR_SYNC_DEVICE_FULL:I = -0x7ddc

.field public static final TCC_ERR_SYNC_INVALID_CREDENTIALS:I = -0x7dd7

.field public static final TCC_ERR_SYNC_LARGE_OBJECT_ERROR:I = -0x7ddb

.field public static final TCC_ERR_SYNC_LARGE_OBJECT_SIZE_MISMATCH:I = -0x7dda

.field public static final TCC_ERR_SYNC_LOGIC:I = -0x7ddd

.field public static final TCC_ERR_SYNC_TARGET_MISMATCH:I = -0x7dd6

.field public static final TCC_SYNC_CRED_BASE64:I = 0x0

.field public static final TCC_SYNC_CRED_MD5:I = 0x1

.field public static final TCC_SYNC_CRED_QQMAIL:I = 0x2

.field public static final TCC_SYNC_CRYPT_NONE:I = 0x0

.field public static final TCC_SYNC_CRYPT_SSL:I = 0x20

.field public static final TCC_SYNC_CRYPT_XXTEA:I = 0x10

.field public static final TCC_SYNC_DEFLATE:I = 0x100

.field public static final TCC_SYNC_GZIP:I = 0x200

.field public static final TCC_URL_OPTION_WLAN:I = 0x2000


# instance fields
.field private cppInstance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/tencent/tccsync/SoTool;->getLIB_Name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/LibraryLoadUtil;->loadLibrary(Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/tencent/tccsync/RemoteSync;->newRemoteSyncInstance()I

    move-result v0

    iput v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private native GetPostBuf(I)[B
.end method

.method private native GetRecvBuf(I)[B
.end method

.method private native addDataSource(IILcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;)I
.end method

.method private native deleteRemoteSyncObject(I)V
.end method

.method private native end(I)V
.end method

.method private native getLastError(I)I
.end method

.method private native getPostUrl(I)Ljava/lang/String;
.end method

.method private native newRemoteSyncInstance()I
.end method

.method private native next(I)I
.end method

.method private native nextStep(I)I
.end method

.method private native setConfigure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tccsync/RemoteSyncObserver;II)I
.end method

.method private native start(I)I
.end method

.method private throwIfError(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lcom/tencent/tccsync/SyncException;

    invoke-direct {v0, p1}, Lcom/tencent/tccsync/SyncException;-><init>(I)V

    throw v0

    :sswitch_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method private native writeBackRecvBuf(I[B)V
.end method


# virtual methods
.method public GetPostBuf()[B
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->GetPostBuf(I)[B

    move-result-object v0

    return-object v0
.end method

.method public GetRecvBuf()[B
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->GetRecvBuf(I)[B

    move-result-object v0

    return-object v0
.end method

.method public addDataSource(Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-virtual {p1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/tencent/tccsync/RemoteSync;->addDataSource(IILcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->throwIfError(I)V

    return-void
.end method

.method public end()V
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->end(I)V

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->deleteRemoteSyncObject(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->deleteRemoteSyncObject(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    :cond_0
    return-void
.end method

.method public getLastError()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->getLastError(I)I

    move-result v0

    return v0
.end method

.method public getPostUrl()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->getPostUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->next(I)I

    move-result v0

    return v0
.end method

.method public nextStep()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->nextStep(I)I

    move-result v0

    return v0
.end method

.method public setConfigure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tccsync/RemoteSyncObserver;II)V
    .locals 9

    iget v1, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/tencent/tccsync/RemoteSync;->setConfigure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tccsync/RemoteSyncObserver;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->throwIfError(I)V

    return-void
.end method

.method public start()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/RemoteSync;->start(I)I

    move-result v0

    return v0
.end method

.method public writeBackRecvBuf([B)V
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/RemoteSync;->cppInstance:I

    invoke-direct {p0, v0, p1}, Lcom/tencent/tccsync/RemoteSync;->writeBackRecvBuf(I[B)V

    return-void
.end method
