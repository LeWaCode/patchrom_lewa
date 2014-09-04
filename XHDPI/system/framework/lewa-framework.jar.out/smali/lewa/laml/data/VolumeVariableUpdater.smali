.class public Llewa/laml/data/VolumeVariableUpdater;
.super Llewa/laml/data/NotifierVariableUpdater;
.source "VolumeVariableUpdater.java"


# static fields
.field private static final SHOW_DELAY_TIME:I = 0x3e8

.field public static final VAR_VOLUME_LEVEL:Ljava/lang/String; = "volume_level"

.field public static final VAR_VOLUME_LEVEL_OLD:Ljava/lang/String; = "volume_level_old"

.field public static final VAR_VOLUME_TYPE:Ljava/lang/String; = "volume_type"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mResetType:Ljava/lang/Runnable;

.field private mVolumeLevel:Llewa/laml/util/IndexedNumberVariable;

.field private mVolumeLevelOld:Llewa/laml/util/IndexedNumberVariable;

.field private mVolumeType:Llewa/laml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Llewa/laml/data/VariableUpdaterManager;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 35
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p0, p1, v1}, Llewa/laml/data/NotifierVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 26
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Llewa/laml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v1, Llewa/laml/data/VolumeVariableUpdater$1;

    invoke-direct {v1, p0}, Llewa/laml/data/VolumeVariableUpdater$1;-><init>(Llewa/laml/data/VolumeVariableUpdater;)V

    iput-object v1, p0, Llewa/laml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    .line 36
    new-instance v1, Llewa/laml/util/IndexedNumberVariable;

    const-string v2, "volume_level"

    invoke-virtual {p0}, Llewa/laml/data/VolumeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v1, p0, Llewa/laml/data/VolumeVariableUpdater;->mVolumeLevel:Llewa/laml/util/IndexedNumberVariable;

    .line 37
    new-instance v1, Llewa/laml/util/IndexedNumberVariable;

    const-string v2, "volume_level_old"

    invoke-virtual {p0}, Llewa/laml/data/VolumeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v1, p0, Llewa/laml/data/VolumeVariableUpdater;->mVolumeLevelOld:Llewa/laml/util/IndexedNumberVariable;

    .line 38
    new-instance v1, Llewa/laml/util/IndexedNumberVariable;

    const-string v2, "volume_type"

    invoke-virtual {p0}, Llewa/laml/data/VolumeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v1, p0, Llewa/laml/data/VolumeVariableUpdater;->mVolumeType:Llewa/laml/util/IndexedNumberVariable;

    .line 39
    iget-object v1, p0, Llewa/laml/data/VolumeVariableUpdater;->mVolumeType:Llewa/laml/util/IndexedNumberVariable;

    const-wide/high16 v2, -0x4010

    invoke-virtual {v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 40
    invoke-virtual {p1}, Llewa/laml/data/VariableUpdaterManager;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 41
    .local v0, am:Landroid/media/AudioManager;
    iget-object v1, p0, Llewa/laml/data/VolumeVariableUpdater;->mVolumeLevel:Llewa/laml/util/IndexedNumberVariable;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Llewa/laml/data/VolumeVariableUpdater;)Llewa/laml/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Llewa/laml/data/VolumeVariableUpdater;->mVolumeType:Llewa/laml/util/IndexedNumberVariable;

    return-object v0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, streamType:I
    iget-object v3, p0, Llewa/laml/data/VolumeVariableUpdater;->mVolumeType:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 48
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, newVolLevel:I
    iget-object v3, p0, Llewa/laml/data/VolumeVariableUpdater;->mVolumeLevel:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 50
    const-string v3, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, oldVolLevel:I
    if-eq v1, v0, :cond_0

    .line 52
    iget-object v3, p0, Llewa/laml/data/VolumeVariableUpdater;->mVolumeLevelOld:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Llewa/laml/data/VolumeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/ScreenContext;->requestUpdate()V

    .line 54
    iget-object v3, p0, Llewa/laml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Llewa/laml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    iget-object v3, p0, Llewa/laml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Llewa/laml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .end local v0           #newVolLevel:I
    .end local v1           #oldVolLevel:I
    .end local v2           #streamType:I
    :cond_1
    return-void
.end method
