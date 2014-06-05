.class public Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;
.super Ljava/lang/Object;


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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getAddAndDelQuickCount(Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I
.end method

.method public native getLocalChangeCount(Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I
.end method

.method public native getSyncContactsDetailChangeList(Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
.end method
