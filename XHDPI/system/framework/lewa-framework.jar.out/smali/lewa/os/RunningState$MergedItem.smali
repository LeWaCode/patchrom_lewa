.class Llewa/os/RunningState$MergedItem;
.super Llewa/os/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/os/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Llewa/os/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/os/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llewa/os/RunningState$BaseItem;-><init>(Z)V

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/os/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 452
    iput v1, p0, Llewa/os/RunningState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Llewa/os/RunningState$MergedItem;->mLastNumServices:I

    .line 456
    return-void
.end method


# virtual methods
.method update(Landroid/content/Context;Z)Z
    .locals 10
    .parameter "context"
    .parameter "background"

    .prologue
    const/4 v5, 0x0

    .line 459
    iget-object v4, p0, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    iget-object v4, v4, Llewa/os/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v4, p0, Llewa/os/RunningState$MergedItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 460
    iget-object v4, p0, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    iget-object v4, v4, Llewa/os/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Llewa/os/RunningState$MergedItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 461
    iget-object v4, p0, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    iget-object v4, v4, Llewa/os/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iput-object v4, p0, Llewa/os/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 462
    iput-boolean p2, p0, Llewa/os/RunningState$MergedItem;->mBackground:Z

    .line 464
    iget-boolean v4, p0, Llewa/os/RunningState$MergedItem;->mBackground:Z

    if-nez v4, :cond_1

    .line 465
    iget-object v4, p0, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    iget v4, v4, Llewa/os/RunningState$ProcessItem;->mPid:I

    if-lez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    iget-object v6, p0, Llewa/os/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v1, v4, v6

    .line 466
    .local v1, numProcesses:I
    iget-object v4, p0, Llewa/os/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 467
    .local v2, numServices:I
    iget v4, p0, Llewa/os/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v4, v1, :cond_0

    iget v4, p0, Llewa/os/RunningState$MergedItem;->mLastNumServices:I

    if-eq v4, v2, :cond_1

    .line 468
    :cond_0
    iput v1, p0, Llewa/os/RunningState$MergedItem;->mLastNumProcesses:I

    .line 469
    iput v2, p0, Llewa/os/RunningState$MergedItem;->mLastNumServices:I

    .line 473
    .end local v1           #numProcesses:I
    .end local v2           #numServices:I
    :cond_1
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Llewa/os/RunningState$MergedItem;->mActiveSince:J

    .line 474
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Llewa/os/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 475
    iget-object v4, p0, Llewa/os/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/os/RunningState$ServiceItem;

    .line 476
    .local v3, si:Llewa/os/RunningState$ServiceItem;
    iget-wide v6, v3, Llewa/os/RunningState$ServiceItem;->mActiveSince:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_2

    iget-wide v6, p0, Llewa/os/RunningState$MergedItem;->mActiveSince:J

    iget-wide v8, v3, Llewa/os/RunningState$ServiceItem;->mActiveSince:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_2

    .line 477
    iget-wide v6, v3, Llewa/os/RunningState$ServiceItem;->mActiveSince:J

    iput-wide v6, p0, Llewa/os/RunningState$MergedItem;->mActiveSince:J

    .line 474
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v3           #si:Llewa/os/RunningState$ServiceItem;
    :cond_3
    move v4, v5

    .line 465
    goto :goto_0

    .line 481
    .restart local v0       #i:I
    :cond_4
    return v5
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 485
    iget-object v2, p0, Llewa/os/RunningState$MergedItem;->mProcess:Llewa/os/RunningState$ProcessItem;

    iget-wide v2, v2, Llewa/os/RunningState$ProcessItem;->mSize:J

    iput-wide v2, p0, Llewa/os/RunningState$MergedItem;->mSize:J

    .line 486
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Llewa/os/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 487
    iget-wide v3, p0, Llewa/os/RunningState$MergedItem;->mSize:J

    iget-object v2, p0, Llewa/os/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/os/RunningState$ProcessItem;

    iget-wide v5, v2, Llewa/os/RunningState$ProcessItem;->mSize:J

    add-long v2, v3, v5

    iput-wide v2, p0, Llewa/os/RunningState$MergedItem;->mSize:J

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_0
    iget-wide v2, p0, Llewa/os/RunningState$MergedItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, sizeStr:Ljava/lang/String;
    iget-object v2, p0, Llewa/os/RunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    iput-object v1, p0, Llewa/os/RunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    .line 499
    :cond_1
    return v7
.end method
