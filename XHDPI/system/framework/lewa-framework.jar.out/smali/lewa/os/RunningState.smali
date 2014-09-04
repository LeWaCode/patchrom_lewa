.class public Llewa/os/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/os/RunningState$ServiceProcessComparator;,
        Llewa/os/RunningState$MergedItem;,
        Llewa/os/RunningState$ProcessItem;,
        Llewa/os/RunningState$ServiceItem;,
        Llewa/os/RunningState$BaseItem;,
        Llewa/os/RunningState$OnRefreshUiListener;,
        Llewa/os/RunningState$BackgroundHandler;,
        Llewa/os/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field public static sInstance:Llewa/os/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundHandler:Llewa/os/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Llewa/os/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Llewa/os/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Llewa/os/RunningState$ServiceProcessComparator;

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/os/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Llewa/os/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Llewa/os/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llewa/os/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Llewa/os/RunningState$ServiceProcessComparator;

    invoke-direct {v0}, Llewa/os/RunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mServiceProcessComparator:Llewa/os/RunningState$ServiceProcessComparator;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 112
    iput v2, p0, Llewa/os/RunningState;->mSequence:I

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mItems:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Llewa/os/RunningState$1;

    invoke-direct {v0, p0}, Llewa/os/RunningState$1;-><init>(Llewa/os/RunningState;)V

    iput-object v0, p0, Llewa/os/RunningState;->mHandler:Landroid/os/Handler;

    .line 550
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llewa/os/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 551
    iget-object v0, p0, Llewa/os/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Llewa/os/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 552
    iget-object v0, p0, Llewa/os/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Llewa/os/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 553
    iput-boolean v2, p0, Llewa/os/RunningState;->mResumed:Z

    .line 554
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/os/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 555
    iget-object v0, p0, Llewa/os/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 556
    new-instance v0, Llewa/os/RunningState$BackgroundHandler;

    iget-object v1, p0, Llewa/os/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llewa/os/RunningState$BackgroundHandler;-><init>(Llewa/os/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Llewa/os/RunningState;->mBackgroundHandler:Llewa/os/RunningState$BackgroundHandler;

    .line 557
    return-void
.end method

.method static synthetic access$000(Llewa/os/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Llewa/os/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Llewa/os/RunningState;
    .locals 2
    .parameter "context"

    .prologue
    .line 541
    sget-object v1, Llewa/os/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    sget-object v0, Llewa/os/RunningState;->sInstance:Llewa/os/RunningState;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Llewa/os/RunningState;

    invoke-direct {v0, p0}, Llewa/os/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Llewa/os/RunningState;->sInstance:Llewa/os/RunningState;

    .line 545
    :cond_0
    sget-object v0, Llewa/os/RunningState;->sInstance:Llewa/os/RunningState;

    monitor-exit v1

    return-object v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 604
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 614
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 524
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 526
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 527
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 537
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 532
    :cond_2
    move-object v0, p1

    .line 533
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 534
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 535
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 58
    .parameter "context"
    .parameter "am"

    .prologue
    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    .line 620
    .local v40, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v54, v0

    add-int/lit8 v54, v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Llewa/os/RunningState;->mSequence:I

    .line 622
    const/4 v15, 0x0

    .line 626
    .local v15, changed:Z
    const/16 v54, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v47

    .line 628
    .local v47, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v47, :cond_1

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v9

    .line 629
    .local v9, NS:I
    :goto_0
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v9, :cond_3

    .line 630
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 634
    .local v48, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v54, v0

    if-nez v54, :cond_2

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-nez v54, :cond_2

    .line 635
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 636
    add-int/lit8 v22, v22, -0x1

    .line 637
    add-int/lit8 v9, v9, -0x1

    .line 629
    :cond_0
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 628
    .end local v9           #NS:I
    .end local v22           #i:I
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 642
    .restart local v9       #NS:I
    .restart local v22       #i:I
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x8

    if-eqz v54, :cond_0

    .line 644
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 645
    add-int/lit8 v22, v22, -0x1

    .line 646
    add-int/lit8 v9, v9, -0x1

    .line 647
    goto :goto_2

    .line 653
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v42

    .line 655
    .local v42, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v42, :cond_4

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v7

    .line 656
    .local v7, NP:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 657
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v7, :cond_5

    .line 658
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 659
    .local v36, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    new-instance v56, Llewa/os/RunningState$AppProcessInfo;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Llewa/os/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v54 .. v56}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 655
    .end local v7           #NP:I
    .end local v36           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 664
    .restart local v7       #NP:I
    :cond_5
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_7

    .line 665
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 666
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_6

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_6

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Llewa/os/RunningState$AppProcessInfo;

    .line 668
    .local v10, ainfo:Llewa/os/RunningState$AppProcessInfo;
    if-eqz v10, :cond_6

    .line 669
    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Llewa/os/RunningState$AppProcessInfo;->hasServices:Z

    .line 670
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v54, v0

    if-eqz v54, :cond_6

    .line 671
    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Llewa/os/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 664
    .end local v10           #ainfo:Llewa/os/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 678
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v0, v9, :cond_13

    .line 679
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 686
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_b

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_b

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Llewa/os/RunningState$AppProcessInfo;

    .line 688
    .restart local v10       #ainfo:Llewa/os/RunningState$AppProcessInfo;
    if-eqz v10, :cond_b

    iget-boolean v0, v10, Llewa/os/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_b

    .line 694
    iget-object v0, v10, Llewa/os/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x12c

    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_b

    .line 698
    const/16 v50, 0x0

    .line 699
    .local v50, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Llewa/os/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Llewa/os/RunningState$AppProcessInfo;
    check-cast v10, Llewa/os/RunningState$AppProcessInfo;

    .line 700
    .restart local v10       #ainfo:Llewa/os/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v10, :cond_9

    .line 701
    iget-boolean v0, v10, Llewa/os/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_8

    iget-object v0, v10, Llewa/os/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Llewa/os/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_a

    .line 702
    :cond_8
    const/16 v50, 0x1

    .line 707
    :cond_9
    if-eqz v50, :cond_b

    .line 678
    .end local v10           #ainfo:Llewa/os/RunningState$AppProcessInfo;
    .end local v50           #skip:Z
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 705
    .restart local v10       #ainfo:Llewa/os/RunningState$AppProcessInfo;
    .restart local v50       #skip:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Llewa/os/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Llewa/os/RunningState$AppProcessInfo;
    check-cast v10, Llewa/os/RunningState$AppProcessInfo;

    .restart local v10       #ainfo:Llewa/os/RunningState$AppProcessInfo;
    goto :goto_7

    .line 714
    .end local v10           #ainfo:Llewa/os/RunningState$AppProcessInfo;
    .end local v50           #skip:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    .line 715
    .local v43, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Llewa/os/RunningState$ProcessItem;>;"
    if-nez v43, :cond_c

    .line 716
    new-instance v43, Ljava/util/HashMap;

    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Llewa/os/RunningState$ProcessItem;>;"
    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    .line 717
    .restart local v43       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Llewa/os/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 719
    :cond_c
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Llewa/os/RunningState$ProcessItem;

    .line 720
    .local v41, proc:Llewa/os/RunningState$ProcessItem;
    if-nez v41, :cond_d

    .line 721
    const/4 v15, 0x1

    .line 722
    new-instance v41, Llewa/os/RunningState$ProcessItem;

    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v54

    move-object/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Llewa/os/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 723
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :cond_d
    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_11

    .line 727
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_12

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v37, v0

    .line 728
    .local v37, pid:I
    :goto_9
    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v37

    move/from16 v1, v54

    if-eq v0, v1, :cond_10

    .line 729
    const/4 v15, 0x1

    .line 730
    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move/from16 v1, v37

    if-eq v0, v1, :cond_10

    .line 731
    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_e

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    .line 734
    :cond_e
    if-eqz v37, :cond_f

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v37

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 737
    :cond_f
    move/from16 v0, v37

    move-object/from16 v1, v41

    iput v0, v1, Llewa/os/RunningState$ProcessItem;->mPid:I

    .line 740
    :cond_10
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 741
    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    .line 743
    .end local v37           #pid:I
    :cond_11
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Llewa/os/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v54

    or-int v15, v15, v54

    goto/16 :goto_8

    .line 727
    :cond_12
    const/16 v37, 0x0

    goto :goto_9

    .line 748
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Llewa/os/RunningState$ProcessItem;>;"
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v0, v7, :cond_18

    .line 749
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 750
    .restart local v36       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Llewa/os/RunningState$ProcessItem;

    .line 751
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    if-nez v41, :cond_15

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    check-cast v41, Llewa/os/RunningState$ProcessItem;

    .line 756
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    if-nez v41, :cond_14

    .line 757
    const/4 v15, 0x1

    .line 758
    new-instance v41, Llewa/os/RunningState$ProcessItem;

    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v54, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v54

    move-object/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Llewa/os/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 759
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Llewa/os/RunningState$ProcessItem;->mPid:I

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 762
    :cond_14
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 765
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Llewa/os/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_17

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_16

    .line 767
    const/4 v15, 0x1

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    .line 771
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Llewa/os/RunningState$ProcessItem;->mInteresting:Z

    .line 772
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Llewa/os/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 777
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Llewa/os/RunningState$ProcessItem;->mRunningSeq:I

    .line 778
    move-object/from16 v0, v36

    move-object/from16 v1, v41

    iput-object v0, v1, Llewa/os/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 748
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    .line 774
    :cond_17
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Llewa/os/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 783
    .end local v36           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 784
    .local v8, NRP:I
    const/16 v22, 0x0

    :goto_c
    move/from16 v0, v22

    if-ge v0, v8, :cond_1d

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Llewa/os/RunningState$ProcessItem;

    .line 786
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    if-eqz v41, :cond_1c

    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_1c

    .line 787
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v17, v0

    .line 788
    .local v17, clientPid:I
    if-eqz v17, :cond_1b

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Llewa/os/RunningState$ProcessItem;

    .line 790
    .local v16, client:Llewa/os/RunningState$ProcessItem;
    if-nez v16, :cond_19

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #client:Llewa/os/RunningState$ProcessItem;
    check-cast v16, Llewa/os/RunningState$ProcessItem;

    .line 793
    .restart local v16       #client:Llewa/os/RunningState$ProcessItem;
    :cond_19
    if-eqz v16, :cond_1a

    .line 794
    move-object/from16 v0, v16

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 802
    .end local v16           #client:Llewa/os/RunningState$ProcessItem;
    :cond_1a
    :goto_d
    add-int/lit8 v22, v22, 0x1

    .line 803
    goto :goto_c

    .line 800
    :cond_1b
    const/16 v54, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Llewa/os/RunningState$ProcessItem;->mClient:Llewa/os/RunningState$ProcessItem;

    goto :goto_d

    .line 804
    .end local v17           #clientPid:I
    :cond_1c
    const/4 v15, 0x1

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    .line 806
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_c

    .line 811
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 812
    .local v6, NHP:I
    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v0, v6, :cond_20

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Llewa/os/RunningState$ProcessItem;

    .line 814
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget-boolean v0, v0, Llewa/os/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v54, v0

    if-eqz v54, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v54

    if-nez v54, :cond_1f

    .line 815
    :cond_1e
    const/4 v15, 0x1

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 817
    add-int/lit8 v22, v22, -0x1

    .line 818
    add-int/lit8 v6, v6, -0x1

    .line 812
    :cond_1f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 825
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 826
    .local v5, NAP:I
    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v0, v5, :cond_22

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Llewa/os/RunningState$ProcessItem;

    .line 828
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_21

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Llewa/os/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v54

    or-int v15, v15, v54

    .line 826
    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 834
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    :cond_22
    const/16 v53, 0x0

    .line 835
    .local v53, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2a

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    .line 837
    .restart local v43       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Llewa/os/RunningState$ProcessItem;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .line 838
    .local v39, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Llewa/os/RunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_29

    .line 839
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Llewa/os/RunningState$ProcessItem;

    .line 840
    .local v36, pi:Llewa/os/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_26

    .line 841
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Llewa/os/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 842
    move-object/from16 v0, v36

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-nez v54, :cond_24

    .line 845
    move-object/from16 v0, v36

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 861
    :cond_24
    move-object/from16 v0, v36

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .line 862
    .local v49, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Llewa/os/RunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_23

    .line 863
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Llewa/os/RunningState$ServiceItem;

    .line 864
    .local v48, si:Llewa/os/RunningState$ServiceItem;
    move-object/from16 v0, v48

    iget v0, v0, Llewa/os/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_25

    .line 865
    const/4 v15, 0x1

    .line 866
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 848
    .end local v48           #si:Llewa/os/RunningState$ServiceItem;
    .end local v49           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Llewa/os/RunningState$ServiceItem;>;"
    :cond_26
    const/4 v15, 0x1

    .line 849
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->remove()V

    .line 850
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->size()I

    move-result v54

    if-nez v54, :cond_28

    .line 851
    if-nez v53, :cond_27

    .line 852
    new-instance v53, Ljava/util/ArrayList;

    .end local v53           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .restart local v53       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_28
    move-object/from16 v0, v36

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_23

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 835
    .end local v36           #pi:Llewa/os/RunningState$ProcessItem;
    :cond_29
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 872
    .end local v39           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Llewa/os/RunningState$ProcessItem;>;"
    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Llewa/os/RunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v53, :cond_2b

    .line 873
    const/16 v22, 0x0

    :goto_13
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2b

    .line 874
    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Integer;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v52

    .line 875
    .local v52, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 873
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 879
    .end local v52           #uid:I
    :cond_2b
    if-eqz v15, :cond_3c

    .line 881
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v51, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$ProcessItem;>;"
    const/16 v22, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_30

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/util/HashMap;

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_15
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Llewa/os/RunningState$ProcessItem;

    .line 884
    .restart local v36       #pi:Llewa/os/RunningState$ProcessItem;
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Llewa/os/RunningState$ProcessItem;->mIsSystem:Z

    .line 885
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Llewa/os/RunningState$ProcessItem;->mIsStarted:Z

    .line 886
    const-wide v54, 0x7fffffffffffffffL

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Llewa/os/RunningState$ProcessItem;->mActiveSince:J

    .line 887
    move-object/from16 v0, v36

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Llewa/os/RunningState$ServiceItem;

    .line 888
    .restart local v48       #si:Llewa/os/RunningState$ServiceItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Llewa/os/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2d

    move-object/from16 v0, v48

    iget-object v0, v0, Llewa/os/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x1

    if-eqz v54, :cond_2d

    .line 891
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Llewa/os/RunningState$ProcessItem;->mIsSystem:Z

    .line 893
    :cond_2d
    move-object/from16 v0, v48

    iget-object v0, v0, Llewa/os/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2c

    move-object/from16 v0, v48

    iget-object v0, v0, Llewa/os/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-eqz v54, :cond_2c

    .line 895
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Llewa/os/RunningState$ProcessItem;->mIsStarted:Z

    .line 896
    move-object/from16 v0, v36

    iget-wide v0, v0, Llewa/os/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Llewa/os/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v56, v0

    cmp-long v54, v54, v56

    if-lez v54, :cond_2c

    .line 897
    move-object/from16 v0, v48

    iget-object v0, v0, Llewa/os/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Llewa/os/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 901
    .end local v48           #si:Llewa/os/RunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v51

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 882
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v36           #pi:Llewa/os/RunningState$ProcessItem;
    :cond_2f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_14

    .line 905
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mServiceProcessComparator:Llewa/os/RunningState$ServiceProcessComparator;

    move-object/from16 v54, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 907
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v30, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$BaseItem;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 909
    .local v31, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 910
    const/16 v22, 0x0

    :goto_17
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_38

    .line 911
    move-object/from16 v0, v51

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Llewa/os/RunningState$ProcessItem;

    .line 912
    .restart local v36       #pi:Llewa/os/RunningState$ProcessItem;
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Llewa/os/RunningState$ProcessItem;->mNeedDivider:Z

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 916
    .local v18, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Llewa/os/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 918
    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    move-object/from16 v0, v36

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-lez v54, :cond_31

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_31
    const/16 v25, 0x0

    .line 925
    .local v25, mergedItem:Llewa/os/RunningState$MergedItem;
    const/16 v21, 0x0

    .line 926
    .local v21, haveAllMerged:Z
    const/16 v27, 0x0

    .line 927
    .local v27, needDivider:Z
    move-object/from16 v0, v36

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_34

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Llewa/os/RunningState$ServiceItem;

    .line 928
    .restart local v48       #si:Llewa/os/RunningState$ServiceItem;
    move/from16 v0, v27

    move-object/from16 v1, v48

    iput-boolean v0, v1, Llewa/os/RunningState$ServiceItem;->mNeedDivider:Z

    .line 929
    const/16 v27, 0x1

    .line 930
    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    move-object/from16 v0, v48

    iget-object v0, v0, Llewa/os/RunningState$ServiceItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-eqz v54, :cond_33

    .line 932
    if-eqz v25, :cond_32

    move-object/from16 v0, v48

    iget-object v0, v0, Llewa/os/RunningState$ServiceItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_32

    .line 933
    const/16 v21, 0x0

    .line 935
    :cond_32
    move-object/from16 v0, v48

    iget-object v0, v0, Llewa/os/RunningState$ServiceItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    move-object/from16 v25, v0

    goto :goto_18

    .line 937
    :cond_33
    const/16 v21, 0x0

    goto :goto_18

    .line 941
    .end local v48           #si:Llewa/os/RunningState$ServiceItem;
    :cond_34
    if-eqz v21, :cond_35

    if-eqz v25, :cond_35

    move-object/from16 v0, v25

    iget-object v0, v0, Llewa/os/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move-object/from16 v0, v36

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->size()I

    move-result v55

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_37

    .line 944
    :cond_35
    new-instance v25, Llewa/os/RunningState$MergedItem;

    .end local v25           #mergedItem:Llewa/os/RunningState$MergedItem;
    invoke-direct/range {v25 .. v25}, Llewa/os/RunningState$MergedItem;-><init>()V

    .line 945
    .restart local v25       #mergedItem:Llewa/os/RunningState$MergedItem;
    move-object/from16 v0, v36

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_36

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Llewa/os/RunningState$ServiceItem;

    .line 946
    .restart local v48       #si:Llewa/os/RunningState$ServiceItem;
    move-object/from16 v0, v25

    iget-object v0, v0, Llewa/os/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    move-object/from16 v0, v25

    move-object/from16 v1, v48

    iput-object v0, v1, Llewa/os/RunningState$ServiceItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    goto :goto_19

    .line 949
    .end local v48           #si:Llewa/os/RunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    iput-object v0, v1, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    .line 950
    move-object/from16 v0, v25

    iget-object v0, v0, Llewa/os/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 951
    move/from16 v26, v18

    .local v26, mpi:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    add-int/lit8 v54, v54, -0x1

    move/from16 v0, v26

    move/from16 v1, v54

    if-ge v0, v1, :cond_37

    .line 952
    move-object/from16 v0, v25

    iget-object v0, v0, Llewa/os/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    add-int/lit8 v26, v26, 0x1

    goto :goto_1a

    .line 956
    .end local v26           #mpi:I
    :cond_37
    const/16 v54, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Llewa/os/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 957
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_17

    .line 962
    .end local v18           #firstProc:I
    .end local v21           #haveAllMerged:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #mergedItem:Llewa/os/RunningState$MergedItem;
    .end local v27           #needDivider:Z
    .end local v36           #pi:Llewa/os/RunningState$ProcessItem;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 963
    const/16 v22, 0x0

    :goto_1b
    move/from16 v0, v22

    if-ge v0, v6, :cond_3b

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Llewa/os/RunningState$ProcessItem;

    .line 965
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mClient:Llewa/os/RunningState$ProcessItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_3a

    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->size()I

    move-result v54

    if-gtz v54, :cond_3a

    .line 966
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_39

    .line 967
    new-instance v54, Llewa/os/RunningState$MergedItem;

    invoke-direct/range {v54 .. v54}, Llewa/os/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Llewa/os/RunningState$ProcessItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    .line 968
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    .line 970
    :cond_39
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Llewa/os/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 971
    const/16 v54, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    move/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    :cond_3a
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    .line 976
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    .line 977
    :try_start_0
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/os/RunningState;->mItems:Ljava/util/ArrayList;

    .line 978
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/os/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 979
    monitor-exit v55
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    .end local v30           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$BaseItem;>;"
    .end local v31           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .end local v51           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$ProcessItem;>;"
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 986
    const/16 v32, 0x0

    .line 987
    .local v32, numBackgroundProcesses:I
    const/16 v33, 0x0

    .line 988
    .local v33, numForegroundProcesses:I
    const/16 v35, 0x0

    .line 989
    .local v35, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 990
    const/16 v22, 0x0

    :goto_1c
    move/from16 v0, v22

    if-ge v0, v8, :cond_40

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Llewa/os/RunningState$ProcessItem;

    .line 992
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_3f

    .line 995
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_3d

    .line 997
    add-int/lit8 v32, v32, 0x1

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    :goto_1d
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    .line 979
    .end local v32           #numBackgroundProcesses:I
    .end local v33           #numForegroundProcesses:I
    .end local v35           #numServiceProcesses:I
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    .restart local v30       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$BaseItem;>;"
    .restart local v31       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v51       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v54

    :try_start_1
    monitor-exit v55
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v54

    .line 999
    .end local v30           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$BaseItem;>;"
    .end local v31           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .end local v51           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$ProcessItem;>;"
    .restart local v32       #numBackgroundProcesses:I
    .restart local v33       #numForegroundProcesses:I
    .restart local v35       #numServiceProcesses:I
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_3e

    .line 1001
    add-int/lit8 v33, v33, 0x1

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1004
    :cond_3e
    const-string v54, "RunningState"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Unknown non-service process: "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, " #"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1008
    :cond_3f
    add-int/lit8 v35, v35, 0x1

    goto :goto_1d

    .line 1012
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    :cond_40
    const-wide/16 v11, 0x0

    .line 1013
    .local v11, backgroundProcessMemory:J
    const-wide/16 v19, 0x0

    .line 1014
    .local v19, foregroundProcessMemory:J
    const-wide/16 v45, 0x0

    .line 1015
    .local v45, serviceProcessMemory:J
    const/16 v28, 0x0

    .line 1017
    .local v28, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 1018
    .local v34, numProc:I
    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v38, v0

    .line 1019
    .local v38, pids:[I
    const/16 v22, 0x0

    :goto_1e
    move/from16 v0, v22

    move/from16 v1, v34

    if-ge v0, v1, :cond_41

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Llewa/os/RunningState$ProcessItem;

    move-object/from16 v0, v54

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    aput v54, v38, v22

    .line 1019
    add-int/lit8 v22, v22, 0x1

    goto :goto_1e

    .line 1022
    :cond_41
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v44

    .line 1024
    .local v44, pss:[J
    const/4 v13, 0x0

    .line 1025
    .local v13, bgIndex:I
    const/16 v22, 0x0

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .local v29, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    :goto_1f
    :try_start_3
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v54, v0

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_48

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Llewa/os/RunningState$ProcessItem;

    .line 1027
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    aget-wide v54, v44, v22

    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v56, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-wide/from16 v2, v54

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Llewa/os/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v54

    or-int v15, v15, v54

    .line 1028
    move-object/from16 v0, v41

    iget v0, v0, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/os/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_42

    .line 1029
    move-object/from16 v0, v41

    iget-wide v0, v0, Llewa/os/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v45, v45, v54

    move-object/from16 v28, v29

    .line 1025
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    :goto_20
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    goto :goto_1f

    .line 1030
    :cond_42
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_47

    .line 1032
    move-object/from16 v0, v41

    iget-wide v0, v0, Llewa/os/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v11, v11, v54

    .line 1034
    if-eqz v29, :cond_43

    .line 1035
    new-instance v25, Llewa/os/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Llewa/os/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Llewa/os/RunningState$ProcessItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    .line 1036
    .restart local v25       #mergedItem:Llewa/os/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    .line 1037
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v28, v29

    .line 1052
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    :goto_21
    const/16 v54, 0x1

    :try_start_4
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Llewa/os/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1053
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Llewa/os/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1054
    add-int/lit8 v13, v13, 0x1

    .line 1055
    goto :goto_20

    .line 1039
    .end local v25           #mergedItem:Llewa/os/RunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    :cond_43
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    if-ge v13, v0, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Llewa/os/RunningState$MergedItem;

    move-object/from16 v0, v54

    iget-object v0, v0, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_46

    .line 1041
    :cond_44
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1042
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    const/4 v14, 0x0

    .local v14, bgi:I
    :goto_22
    if-ge v14, v13, :cond_45

    .line 1043
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 1045
    :cond_45
    new-instance v25, Llewa/os/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Llewa/os/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Llewa/os/RunningState$ProcessItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    .line 1046
    .restart local v25       #mergedItem:Llewa/os/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mMergedItem:Llewa/os/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    .line 1047
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_21

    .line 1060
    .end local v13           #bgIndex:I
    .end local v14           #bgi:I
    .end local v25           #mergedItem:Llewa/os/RunningState$MergedItem;
    .end local v34           #numProc:I
    .end local v38           #pids:[I
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    .end local v44           #pss:[J
    :catch_0
    move-exception v54

    .line 1063
    :goto_23
    if-nez v28, :cond_49

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    move/from16 v1, v32

    if-le v0, v1, :cond_49

    .line 1066
    new-instance v28, Ljava/util/ArrayList;

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1067
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    const/4 v14, 0x0

    .restart local v14       #bgi:I
    :goto_24
    move/from16 v0, v32

    if-ge v14, v0, :cond_49

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 1049
    .end local v14           #bgi:I
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v34       #numProc:I
    .restart local v38       #pids:[I
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    .restart local v44       #pss:[J
    :cond_46
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Llewa/os/RunningState$MergedItem;

    .restart local v25       #mergedItem:Llewa/os/RunningState$MergedItem;
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    goto/16 :goto_21

    .line 1055
    .end local v25           #mergedItem:Llewa/os/RunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    :cond_47
    move-object/from16 v0, v41

    iget-object v0, v0, Llewa/os/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_4d

    .line 1057
    move-object/from16 v0, v41

    iget-wide v0, v0, Llewa/os/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v54, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v19, v19, v54

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    goto/16 :goto_20

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .end local v41           #proc:Llewa/os/RunningState$ProcessItem;
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    :cond_48
    move-object/from16 v28, v29

    .line 1061
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    goto :goto_23

    .line 1073
    .end local v13           #bgIndex:I
    .end local v34           #numProc:I
    .end local v38           #pids:[I
    .end local v44           #pss:[J
    :cond_49
    const/16 v22, 0x0

    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_4a

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Llewa/os/RunningState$MergedItem;

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Llewa/os/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1073
    add-int/lit8 v22, v22, 0x1

    goto :goto_25

    .line 1077
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    .line 1078
    :try_start_8
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Llewa/os/RunningState;->mNumServiceProcesses:I

    .line 1079
    move-object/from16 v0, p0

    iput-wide v11, v0, Llewa/os/RunningState;->mBackgroundProcessMemory:J

    .line 1080
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Llewa/os/RunningState;->mForegroundProcessMemory:J

    .line 1081
    if-eqz v28, :cond_4b

    .line 1082
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/os/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1083
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/os/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v54, v0

    if-eqz v54, :cond_4b

    .line 1084
    const/4 v15, 0x1

    .line 1087
    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/os/RunningState;->mHaveData:Z

    move/from16 v54, v0

    if-nez v54, :cond_4c

    .line 1088
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llewa/os/RunningState;->mHaveData:Z

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->notifyAll()V

    .line 1091
    :cond_4c
    monitor-exit v55

    .line 1093
    return v15

    .line 1091
    :catchall_1
    move-exception v54

    monitor-exit v55
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v54

    .line 1060
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v34       #numProc:I
    .restart local v38       #pids:[I
    .restart local v44       #pss:[J
    :catch_1
    move-exception v54

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v41       #proc:Llewa/os/RunningState$ProcessItem;
    :cond_4d
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$MergedItem;>;"
    goto/16 :goto_20
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1115
    iget-object v1, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1116
    :try_start_0
    iget-object v0, p0, Llewa/os/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    iget-object v1, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1098
    :try_start_0
    iget-object v0, p0, Llewa/os/RunningState;->mItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1099
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    iget-object v1, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1110
    :try_start_0
    iget-object v0, p0, Llewa/os/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 579
    iget-object v1, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-boolean v0, p0, Llewa/os/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 596
    iget-object v1, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 597
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Llewa/os/RunningState;->mResumed:Z

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/os/RunningState;->mRefreshUiListener:Llewa/os/RunningState$OnRefreshUiListener;

    .line 599
    iget-object v0, p0, Llewa/os/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    monitor-exit v1

    .line 601
    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Llewa/os/RunningState$OnRefreshUiListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 560
    iget-object v1, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Llewa/os/RunningState;->mResumed:Z

    .line 562
    iput-object p1, p0, Llewa/os/RunningState;->mRefreshUiListener:Llewa/os/RunningState$OnRefreshUiListener;

    .line 564
    iget-object v0, p0, Llewa/os/RunningState;->mBackgroundHandler:Llewa/os/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Llewa/os/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Llewa/os/RunningState;->mBackgroundHandler:Llewa/os/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Llewa/os/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 567
    :cond_0
    iget-object v0, p0, Llewa/os/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    monitor-exit v1

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1103
    iget-object v1, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1104
    :try_start_0
    iput-boolean p1, p0, Llewa/os/RunningState;->mWatchingBackgroundItems:Z

    .line 1105
    monitor-exit v1

    .line 1106
    return-void

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateNow()V
    .locals 3

    .prologue
    .line 572
    iget-object v1, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_0
    iget-object v0, p0, Llewa/os/RunningState;->mBackgroundHandler:Llewa/os/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Llewa/os/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 574
    iget-object v0, p0, Llewa/os/RunningState;->mBackgroundHandler:Llewa/os/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Llewa/os/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 575
    monitor-exit v1

    .line 576
    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForData()V
    .locals 4

    .prologue
    .line 585
    iget-object v1, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Llewa/os/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 588
    :try_start_1
    iget-object v0, p0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    goto :goto_0

    .line 592
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
