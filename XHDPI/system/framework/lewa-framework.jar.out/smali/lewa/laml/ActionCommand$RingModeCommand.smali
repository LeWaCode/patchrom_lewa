.class Llewa/laml/ActionCommand$RingModeCommand;
.super Llewa/laml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingModeCommand"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "RingMode"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mToggleHelper:Llewa/laml/ActionCommand$ModeToggleHelper;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 3
    .parameter "root"
    .parameter "value"

    .prologue
    .line 683
    const-string v0, "ring_mode"

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/ActionCommand$NotificationReceiver;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    new-instance v0, Llewa/laml/ActionCommand$ModeToggleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llewa/laml/ActionCommand$ModeToggleHelper;-><init>(Llewa/laml/ActionCommand$1;)V

    iput-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mToggleHelper:Llewa/laml/ActionCommand$ModeToggleHelper;

    .line 685
    iget-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mToggleHelper:Llewa/laml/ActionCommand$ModeToggleHelper;

    const-string v1, "normal"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Llewa/laml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 686
    iget-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mToggleHelper:Llewa/laml/ActionCommand$ModeToggleHelper;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Llewa/laml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 687
    iget-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mToggleHelper:Llewa/laml/ActionCommand$ModeToggleHelper;

    const-string v1, "silent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llewa/laml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 688
    iget-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mToggleHelper:Llewa/laml/ActionCommand$ModeToggleHelper;

    invoke-virtual {v0, p2}, Llewa/laml/ActionCommand$ModeToggleHelper;->build(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    const-string v0, "ActionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ring mode command value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 663
    iget-object v1, p0, Llewa/laml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Llewa/laml/ActionCommand$RingModeCommand;->mToggleHelper:Llewa/laml/ActionCommand$ModeToggleHelper;

    invoke-virtual {v1}, Llewa/laml/ActionCommand$ModeToggleHelper;->click()V

    .line 665
    iget-object v1, p0, Llewa/laml/ActionCommand$RingModeCommand;->mToggleHelper:Llewa/laml/ActionCommand$ModeToggleHelper;

    invoke-virtual {v1}, Llewa/laml/ActionCommand$ModeToggleHelper;->getModeId()I

    move-result v0

    .line 666
    .local v0, mode:I
    iget-object v1, p0, Llewa/laml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 667
    invoke-virtual {p0, v0}, Llewa/laml/ActionCommand$RingModeCommand;->updateState(I)V

    .line 669
    const-string v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModeName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llewa/laml/ActionCommand$RingModeCommand;->mToggleHelper:Llewa/laml/ActionCommand$ModeToggleHelper;

    invoke-virtual {v3}, Llewa/laml/ActionCommand$ModeToggleHelper;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    .end local v0           #mode:I
    :cond_0
    return-void
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 677
    :cond_0
    iget-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Llewa/laml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Llewa/laml/ActionCommand$RingModeCommand;->updateState(I)V

    .line 680
    :cond_1
    return-void
.end method
