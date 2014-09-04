.class Llewa/os/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/os/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Llewa/os/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    check-cast p1, Llewa/os/RunningState$ProcessItem;

    .end local p1
    check-cast p2, Llewa/os/RunningState$ProcessItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Llewa/os/RunningState$ServiceProcessComparator;->compare(Llewa/os/RunningState$ProcessItem;Llewa/os/RunningState$ProcessItem;)I

    move-result v0

    return v0
.end method

.method public compare(Llewa/os/RunningState$ProcessItem;Llewa/os/RunningState$ProcessItem;)I
    .locals 6
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 505
    iget-boolean v2, p1, Llewa/os/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v3, p2, Llewa/os/RunningState$ProcessItem;->mIsStarted:Z

    if-eq v2, v3, :cond_2

    .line 507
    iget-boolean v2, p1, Llewa/os/RunningState$ProcessItem;->mIsStarted:Z

    if-eqz v2, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 507
    goto :goto_0

    .line 509
    :cond_2
    iget-boolean v2, p1, Llewa/os/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v3, p2, Llewa/os/RunningState$ProcessItem;->mIsSystem:Z

    if-eq v2, v3, :cond_4

    .line 511
    iget-boolean v2, p1, Llewa/os/RunningState$ProcessItem;->mIsSystem:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 513
    :cond_4
    iget-wide v2, p1, Llewa/os/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Llewa/os/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 516
    iget-wide v2, p1, Llewa/os/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Llewa/os/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 518
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
