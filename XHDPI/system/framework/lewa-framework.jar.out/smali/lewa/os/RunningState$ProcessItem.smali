.class Llewa/os/RunningState$ProcessItem;
.super Llewa/os/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/os/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mClient:Llewa/os/RunningState$ProcessItem;

.field final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Llewa/os/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mInteresting:Z

.field mIsStarted:Z

.field mIsSystem:Z

.field mLastNumDependentProcesses:I

.field mMergedItem:Llewa/os/RunningState$MergedItem;

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field mRunningSeq:I

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Llewa/os/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uid"
    .parameter "processName"

    .prologue
    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llewa/os/RunningState$BaseItem;-><init>(Z)V

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 267
    iput p2, p0, Llewa/os/RunningState$ProcessItem;->mUid:I

    .line 268
    iput-object p3, p0, Llewa/os/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 269
    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, dest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$BaseItem;>;"
    .local p2, destProc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/os/RunningState$ProcessItem;>;"
    iget-object v3, p0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 436
    .local v0, NP:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 437
    iget-object v3, p0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/os/RunningState$ProcessItem;

    .line 438
    .local v2, proc:Llewa/os/RunningState$ProcessItem;
    invoke-virtual {v2, p1, p2}, Llewa/os/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 439
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget v3, v2, Llewa/os/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 441
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v2           #proc:Llewa/os/RunningState$ProcessItem;
    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6
    .parameter "context"
    .parameter "pm"
    .parameter "curSeq"

    .prologue
    .line 412
    iget-object v4, p0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 413
    .local v0, NP:I
    const/4 v1, 0x0

    .line 414
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 415
    iget-object v4, p0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/os/RunningState$ProcessItem;

    .line 416
    .local v3, proc:Llewa/os/RunningState$ProcessItem;
    iget-object v4, v3, Llewa/os/RunningState$ProcessItem;->mClient:Llewa/os/RunningState$ProcessItem;

    if-eq v4, p0, :cond_0

    .line 417
    const/4 v1, 0x1

    .line 418
    iput-object p0, v3, Llewa/os/RunningState$ProcessItem;->mClient:Llewa/os/RunningState$ProcessItem;

    .line 420
    :cond_0
    iput p3, v3, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    .line 421
    invoke-virtual {v3, p2}, Llewa/os/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 422
    invoke-virtual {v3, p1, p2, p3}, Llewa/os/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v3           #proc:Llewa/os/RunningState$ProcessItem;
    :cond_1
    iget v4, p0, Llewa/os/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v5, p0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 426
    const/4 v1, 0x1

    .line 427
    iget-object v4, p0, Llewa/os/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, p0, Llewa/os/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    .line 430
    :cond_2
    return v1
.end method

.method ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 10
    .parameter "pm"

    .prologue
    .line 272
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 341
    :goto_0
    return-void

    .line 277
    :cond_0
    :try_start_0
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 278
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, Llewa/os/RunningState$ProcessItem;->mUid:I

    if-ne v8, v9, :cond_1

    .line 279
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 280
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Llewa/os/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v8

    .line 289
    :cond_1
    iget v8, p0, Llewa/os/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, pkgs:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 294
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 295
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 296
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Llewa/os/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 299
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 305
    :cond_2
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 307
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 308
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_3

    .line 309
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 311
    .local v5, nm:Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 312
    iput-object v5, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 313
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 314
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 318
    .end local v5           #nm:Ljava/lang/CharSequence;
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v8

    .line 305
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 324
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 325
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llewa/os/RunningState$ServiceItem;

    iget-object v8, v8, Llewa/os/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 327
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 328
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 334
    :cond_5
    const/4 v8, 0x0

    :try_start_3
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 335
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 336
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Llewa/os/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 339
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 12
    .parameter "context"
    .parameter "service"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 347
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 348
    .local v2, changed:Z
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llewa/os/RunningState$ServiceItem;

    .line 349
    .local v7, si:Llewa/os/RunningState$ServiceItem;
    if-nez v7, :cond_0

    .line 350
    const/4 v2, 0x1

    .line 351
    new-instance v7, Llewa/os/RunningState$ServiceItem;

    .end local v7           #si:Llewa/os/RunningState$ServiceItem;
    invoke-direct {v7}, Llewa/os/RunningState$ServiceItem;-><init>()V

    .line 352
    .restart local v7       #si:Llewa/os/RunningState$ServiceItem;
    iput-object p2, v7, Llewa/os/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 354
    :try_start_0
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iput-object v8, v7, Llewa/os/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    iget-object v8, v7, Llewa/os/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Llewa/os/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v6, v8, v9}, Llewa/os/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Llewa/os/RunningState$ServiceItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 361
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v8, :cond_3

    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    iput-object v8, p0, Llewa/os/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 362
    iget-object v8, v7, Llewa/os/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, v7, Llewa/os/RunningState$ServiceItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 363
    iget-object v8, p0, Llewa/os/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_0
    iget v8, p0, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    iput v8, v7, Llewa/os/RunningState$ServiceItem;->mCurSeq:I

    .line 366
    iput-object p2, v7, Llewa/os/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 367
    iget-wide v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-wide v0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 368
    .local v0, activeSince:J
    :goto_1
    iget-wide v8, v7, Llewa/os/RunningState$ServiceItem;->mActiveSince:J

    cmp-long v8, v8, v0

    if-eqz v8, :cond_1

    .line 369
    iput-wide v0, v7, Llewa/os/RunningState$ServiceItem;->mActiveSince:J

    .line 370
    const/4 v2, 0x1

    .line 372
    :cond_1
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_5

    .line 373
    iget-boolean v8, v7, Llewa/os/RunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz v8, :cond_2

    .line 374
    const/4 v8, 0x0

    iput-boolean v8, v7, Llewa/os/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 375
    const/4 v2, 0x1

    .line 378
    :cond_2
    :try_start_1
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 379
    .local v3, clientr:Landroid/content/res/Resources;
    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, label:Ljava/lang/String;
    const/4 v8, 0x0

    iput-object v8, v7, Llewa/os/RunningState$ServiceItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :goto_2
    move v8, v2

    .line 392
    .end local v0           #activeSince:J
    :goto_3
    return v8

    .line 355
    :catch_0
    move-exception v4

    .line 356
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "RunningState"

    const-string v9, "name not found"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    const/4 v8, 0x0

    goto :goto_3

    .line 361
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 367
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 381
    .restart local v0       #activeSince:J
    :catch_1
    move-exception v4

    .line 382
    .restart local v4       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    iput-object v8, v7, Llewa/os/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_2

    .line 385
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-boolean v8, v7, Llewa/os/RunningState$ServiceItem;->mShownAsStarted:Z

    if-nez v8, :cond_6

    .line 386
    const/4 v8, 0x1

    iput-boolean v8, v7, Llewa/os/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 387
    const/4 v2, 0x1

    .line 389
    :cond_6
    const/4 v8, 0x0

    iput-object v8, v7, Llewa/os/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_2
.end method

.method updateSize(Landroid/content/Context;JI)Z
    .locals 4
    .parameter "context"
    .parameter "pss"
    .parameter "curSeq"

    .prologue
    const/4 v3, 0x0

    .line 396
    const-wide/16 v1, 0x400

    mul-long/2addr v1, p2

    iput-wide v1, p0, Llewa/os/RunningState$ProcessItem;->mSize:J

    .line 397
    iget v1, p0, Llewa/os/RunningState$ProcessItem;->mCurSeq:I

    if-ne v1, p4, :cond_0

    .line 398
    iget-wide v1, p0, Llewa/os/RunningState$ProcessItem;->mSize:J

    invoke-static {p1, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, sizeStr:Ljava/lang/String;
    iget-object v1, p0, Llewa/os/RunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    iput-object v0, p0, Llewa/os/RunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    .line 408
    .end local v0           #sizeStr:Ljava/lang/String;
    :cond_0
    return v3
.end method
