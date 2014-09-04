.class Llewa/lockscreen/UnlockerScreenElement$StartPoint;
.super Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field private endPointUnlocked:Z

.field final synthetic this$0:Llewa/lockscreen/UnlockerScreenElement;

.field private unlockedDist:I


# direct methods
.method public constructor <init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 325
    iput-object p1, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    .line 326
    const-string v2, "StartPoint"

    invoke-direct {p0, p1, p2, v2}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;-><init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 328
    const-string v2, "dist"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, dist:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const-string v0, "0"

    .line 333
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->unlockedDist:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    iput v2, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->unlockedDist:I

    goto :goto_0
.end method


# virtual methods
.method public getEndPointUnlocked()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->endPointUnlocked:Z

    return v0
.end method

.method public getUnlockedDist()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->unlockedDist:I

    return v0
.end method

.method protected onStateChange(Llewa/lockscreen/UnlockerScreenElement$State;Llewa/lockscreen/UnlockerScreenElement$State;)V
    .locals 7
    .parameter "mState"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 342
    sget-object v5, Llewa/lockscreen/UnlockerScreenElement$State;->Invalid:Llewa/lockscreen/UnlockerScreenElement$State;

    if-ne p1, v5, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->context:Landroid/content/Context;
    invoke-static {v5}, Llewa/lockscreen/UnlockerScreenElement;->access$1000(Llewa/lockscreen/UnlockerScreenElement;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_sound_switch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    .line 348
    .local v0, playSound:Z
    :goto_1
    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Llewa/lockscreen/UnlockerScreenElement;->access$800(Llewa/lockscreen/UnlockerScreenElement;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 349
    .local v1, ringerMode:I
    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    move v2, v3

    .line 350
    .local v2, silentMode:Z
    :goto_2
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 354
    sget-object v3, Llewa/lockscreen/UnlockerScreenElement$1;->$SwitchMap$lewa$lockscreen$UnlockerScreenElement$State:[I

    invoke-virtual {p2}, Llewa/lockscreen/UnlockerScreenElement$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 362
    :pswitch_0
    iget-object v3, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->mUnlockedSound:Ljava/lang/String;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->playSound(Ljava/lang/String;)V
    invoke-static {v3, v4}, Llewa/lockscreen/UnlockerScreenElement;->access$900(Llewa/lockscreen/UnlockerScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #playSound:Z
    .end local v1           #ringerMode:I
    .end local v2           #silentMode:Z
    :cond_2
    move v0, v4

    .line 345
    goto :goto_1

    .restart local v0       #playSound:Z
    .restart local v1       #ringerMode:I
    :cond_3
    move v2, v4

    .line 349
    goto :goto_2

    .line 356
    .restart local v2       #silentMode:Z
    :pswitch_1
    iget-object v3, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->mNormalSound:Ljava/lang/String;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->playSound(Ljava/lang/String;)V
    invoke-static {v3, v4}, Llewa/lockscreen/UnlockerScreenElement;->access$900(Llewa/lockscreen/UnlockerScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object v3, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->mPressedSound:Ljava/lang/String;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->playSound(Ljava/lang/String;)V
    invoke-static {v3, v4}, Llewa/lockscreen/UnlockerScreenElement;->access$900(Llewa/lockscreen/UnlockerScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEndPointUnlocked(Z)V
    .locals 0
    .parameter "endPointUnlocked"

    .prologue
    .line 374
    iput-boolean p1, p0, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->endPointUnlocked:Z

    .line 375
    return-void
.end method
