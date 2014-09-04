.class Llewa/os/RunningState$ServiceItem;
.super Llewa/os/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/os/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceItem"
.end annotation


# instance fields
.field mMergedItem:Llewa/os/RunningState$MergedItem;

.field mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

.field mServiceInfo:Landroid/content/pm/ServiceInfo;

.field mShownAsStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llewa/os/RunningState$BaseItem;-><init>(Z)V

    .line 236
    return-void
.end method
