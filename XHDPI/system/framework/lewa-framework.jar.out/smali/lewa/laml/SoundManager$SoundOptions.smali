.class public Llewa/laml/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundOptions"
.end annotation


# instance fields
.field public mKeepCur:Z

.field public mLoop:Z

.field public mSound:Ljava/lang/String;

.field public mStop:Z

.field public mVolume:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZFZ)V
    .locals 0
    .parameter "name"
    .parameter "keepCur"
    .parameter "loop"
    .parameter "volume"
    .parameter "pause"

    .prologue
    .line 164
    invoke-direct {p0, p2, p3, p4}, Llewa/laml/SoundManager$SoundOptions;-><init>(ZZF)V

    .line 165
    iput-boolean p5, p0, Llewa/laml/SoundManager$SoundOptions;->mStop:Z

    .line 166
    iput-object p1, p0, Llewa/laml/SoundManager$SoundOptions;->mSound:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public constructor <init>(ZZF)V
    .locals 3
    .parameter "keepCur"
    .parameter "loop"
    .parameter "volume"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-boolean p1, p0, Llewa/laml/SoundManager$SoundOptions;->mKeepCur:Z

    .line 171
    iput-boolean p2, p0, Llewa/laml/SoundManager$SoundOptions;->mLoop:Z

    .line 172
    cmpg-float v0, p3, v1

    if-gez v0, :cond_0

    .line 173
    iput v1, p0, Llewa/laml/SoundManager$SoundOptions;->mVolume:F

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    .line 175
    iput v2, p0, Llewa/laml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0

    .line 177
    :cond_1
    iput p3, p0, Llewa/laml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0
.end method
