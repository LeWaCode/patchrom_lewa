.class public Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;
.super Ljava/lang/Object;


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

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->newTccRemoteSyncCheckUtilInstance()I

    move-result v0

    iput v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private native deleteTccRemoteSyncCheckUtilInstance(I)V
.end method

.method private native getPostBody(I)[B
.end method

.method private native getPostUrl(I)Ljava/lang/String;
.end method

.method private native getRemoteContactDelTotal(ILjava/util/concurrent/atomic/AtomicInteger;)I
.end method

.method private native getRemoteSyncCheck(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I
.end method

.method private native getRemoteTccSyncCount(IILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I
.end method

.method private native makeCheckWapDataPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native newTccRemoteSyncCheckUtilInstance()I
.end method

.method private native solveLoginResponsePackage(I[BI)I
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->release()V

    return-void
.end method

.method public getPostBody()[B
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostBody(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPostUrl()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteContactDelTotal(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0, p1}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteContactDelTotal(ILjava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public getRemoteSyncCheck(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 6

    iget v1, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteSyncCheck(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public getRemoteTccSyncCount(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 8

    iget v1, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteTccSyncCount(IILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public makeCheckWapDataPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    iget v1, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->makeCheckWapDataPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->deleteTccRemoteSyncCheckUtilInstance(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    :cond_0
    return-void
.end method

.method public solveLoginResponsePackage([BI)I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->cppInstance:I

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->solveLoginResponsePackage(I[BI)I

    move-result v0

    return v0
.end method
