.class public Llewa/util/LewaAudioManagerHelper;
.super Ljava/lang/Object;
.source "LewaAudioManagerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LewaAudioManagerHelper"


# instance fields
.field private cr:Landroid/content/ContentResolver;

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Llewa/util/LewaAudioManagerHelper;->cr:Landroid/content/ContentResolver;

    .line 18
    return-void
.end method


# virtual methods
.method public isDtmfToneEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 65
    iget-object v1, p0, Llewa/util/LewaAudioManagerHelper;->cr:Landroid/content/ContentResolver;

    const-string v2, "dtmf_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFeedBackEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 91
    iget-object v1, p0, Llewa/util/LewaAudioManagerHelper;->cr:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockSoundtEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 82
    iget-object v1, p0, Llewa/util/LewaAudioManagerHelper;->cr:Landroid/content/ContentResolver;

    const-string v2, "lockscreen_sounds_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMuteEnabled()Z
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x2

    iget-object v1, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSoundEffectEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Llewa/util/LewaAudioManagerHelper;->cr:Landroid/content/ContentResolver;

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVibrationEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v0, 0x1

    .line 61
    iget-object v1, p0, Llewa/util/LewaAudioManagerHelper;->cr:Landroid/content/ContentResolver;

    const-string v2, "dtmf_tone"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFeedBackEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v0, 0x1

    .line 86
    iget-object v1, p0, Llewa/util/LewaAudioManagerHelper;->cr:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLockSoundEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-object v1, p0, Llewa/util/LewaAudioManagerHelper;->cr:Landroid/content/ContentResolver;

    const-string v2, "lockscreen_sounds_enabled"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMuteEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 21
    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p0}, Llewa/util/LewaAudioManagerHelper;->isVibrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public setSoundEffectEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v0, 0x1

    .line 69
    iget-object v1, p0, Llewa/util/LewaAudioManagerHelper;->cr:Landroid/content/ContentResolver;

    const-string v2, "sound_effects_enabled"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVibrationEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0}, Llewa/util/LewaAudioManagerHelper;->isVibrationEnabled()Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Llewa/util/LewaAudioManagerHelper;->isMuteEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    iget-object v3, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 48
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    move v0, v1

    .line 51
    .local v0, vibrationStatus:I
    :goto_2
    iget-object v3, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 52
    iget-object v2, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    .line 44
    .end local v0           #vibrationStatus:I
    :cond_2
    iget-object v3, p0, Llewa/util/LewaAudioManagerHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 48
    goto :goto_2
.end method
