.class public Llewa/laml/elements/MusicControlScreenElement;
.super Llewa/laml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static final DEBUG:Z = true

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field public static final EXTRA_IS_PLAYING:Ljava/lang/String; = "playing"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field public static final LYRIC_AFTER:Ljava/lang/String; = "lyric_after"

.field public static final LYRIC_BEFORE:Ljava/lang/String; = "lyric_before"

.field public static final LYRIC_CURRENT:Ljava/lang/String; = "lyric_current"

.field public static final LYRIC_CURRENT_LINE_PROGRESS:Ljava/lang/String; = "lyric_current_line_progress"

.field public static final LYRIC_LAST:Ljava/lang/String; = "lyric_last"

.field public static final LYRIC_NEXT:Ljava/lang/String; = "lyric_next"

.field private static final MAX_ALBUM_COVER_PIXEL_SIZE:I = 0x400000

.field public static final MUSIC_DURATION:Ljava/lang/String; = "music_duration"

.field private static final MUSIC_NONE:I = 0x0

.field private static final MUSIC_PLAY:I = 0x2

.field public static final MUSIC_POSITION:Ljava/lang/String; = "music_position"

.field private static final MUSIC_STOP:I = 0x1

.field private static final SHOW_ALBUM_COVER_INIT:Z = false

.field private static final TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private isPaused:Z

.field private mAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mArtistVar:Llewa/laml/util/IndexedStringVariable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShow:Z

.field private mButtonNext:Llewa/laml/elements/ButtonScreenElement;

.field private mButtonPause:Llewa/laml/elements/ButtonScreenElement;

.field private mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

.field private mButtonPrev:Llewa/laml/elements/ButtonScreenElement;

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mCurrentLineNumber:I

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mDuration:J

.field private mDurationVar:Llewa/laml/util/IndexedNumberVariable;

.field private mEnableLyric:Z

.field private mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

.field private mFilter:Landroid/content/IntentFilter;

.field private mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

.field private mIsOnlineSongBlocking:Z

.field private mIsPlaying:Z

.field private mLastUpdateTime:J

.field private mLyricAfterBuilder:Ljava/lang/StringBuilder;

.field private mLyricAfterVar:Llewa/laml/util/IndexedStringVariable;

.field private mLyricArray:[Ljava/lang/String;

.field private mLyricBeforeBuilder:Ljava/lang/StringBuilder;

.field private mLyricBeforeVar:Llewa/laml/util/IndexedStringVariable;

.field private mLyricCurrentLineProgressVar:Llewa/laml/util/IndexedNumberVariable;

.field private mLyricCurrentVar:Llewa/laml/util/IndexedStringVariable;

.field private mLyricLastVar:Llewa/laml/util/IndexedStringVariable;

.field private mLyricNextVar:Llewa/laml/util/IndexedStringVariable;

.field private mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

.field private mMusicStatus:I

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mPosition:J

.field private mPositionVar:Llewa/laml/util/IndexedNumberVariable;

.field private mRegistered:Z

.field private mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Llewa/laml/elements/TextScreenElement;

.field private mTimeArray:[I

.field private mTitleVar:Llewa/laml/util/IndexedStringVariable;

.field private mUpdateMusicProgress:Ljava/lang/Runnable;

.field private mUpdateMusicProgressInterval:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 278
    new-instance v1, Llewa/laml/elements/MusicControlScreenElement$1;

    invoke-direct {v1, p0}, Llewa/laml/elements/MusicControlScreenElement$1;-><init>(Llewa/laml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    .line 309
    new-instance v1, Llewa/laml/elements/MusicControlScreenElement$2;

    invoke-direct {v1, p0}, Llewa/laml/elements/MusicControlScreenElement$2;-><init>(Llewa/laml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    .line 318
    new-instance v1, Llewa/laml/elements/MusicControlScreenElement$3;

    invoke-direct {v1, p0}, Llewa/laml/elements/MusicControlScreenElement$3;-><init>(Llewa/laml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    .line 326
    new-instance v1, Llewa/laml/elements/MusicControlScreenElement$4;

    invoke-direct {v1, p0}, Llewa/laml/elements/MusicControlScreenElement$4;-><init>(Llewa/laml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 417
    const-string v1, "music_prev"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ButtonScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPrev:Llewa/laml/elements/ButtonScreenElement;

    .line 418
    const-string v1, "music_next"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ButtonScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonNext:Llewa/laml/elements/ButtonScreenElement;

    .line 419
    const-string v1, "music_play"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ButtonScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    .line 420
    const-string v1, "music_pause"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ButtonScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    .line 421
    const-string v1, "music_display"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/TextScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;

    .line 422
    const-string v1, "music_album_cover"

    invoke-virtual {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ImageScreenElement;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    .line 423
    invoke-direct {p0, p0}, Llewa/laml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Llewa/laml/elements/ElementGroup;)Llewa/laml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    .line 424
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPrev:Llewa/laml/elements/ButtonScreenElement;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonNext:Llewa/laml/elements/ButtonScreenElement;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPrev:Llewa/laml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->setupButton(Llewa/laml/elements/ButtonScreenElement;)V

    .line 427
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonNext:Llewa/laml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->setupButton(Llewa/laml/elements/ButtonScreenElement;)V

    .line 428
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->setupButton(Llewa/laml/elements/ButtonScreenElement;)V

    .line 429
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Llewa/laml/elements/MusicControlScreenElement;->setupButton(Llewa/laml/elements/ButtonScreenElement;)V

    .line 430
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 431
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    if-eqz v1, :cond_1

    .line 432
    const-string v1, "defAlbumCover"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, strDefAlbumCoverBmp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v1, v0}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 436
    :cond_0
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->getResourceDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 439
    .end local v0           #strDefAlbumCoverBmp:Ljava/lang/String;
    :cond_1
    const-string v1, "autoShow"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 440
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    .line 442
    iget-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_2

    .line 443
    new-instance v1, Llewa/laml/util/IndexedNumberVariable;

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "music_state"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

    .line 448
    :cond_2
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/MusicControlScreenElement;->initLyric(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 449
    return-void

    .line 446
    :cond_3
    new-instance v1, Llewa/laml/ScreenElementLoadException;

    const-string v2, "invalid music control"

    invoke-direct {v1, v2}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Llewa/laml/elements/MusicControlScreenElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$002(Llewa/laml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$100(Llewa/laml/elements/MusicControlScreenElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    return v0
.end method

.method static synthetic access$1000(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$102(Llewa/laml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    return p1
.end method

.method static synthetic access$1100(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->setLyricVar()V

    return-void
.end method

.method static synthetic access$1200(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->setLyricCurrentLineProgressVar()V

    return-void
.end method

.method static synthetic access$1300(Llewa/laml/elements/MusicControlScreenElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgressInterval:I

    return v0
.end method

.method static synthetic access$1400(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->updateMusic()V

    return-void
.end method

.method static synthetic access$1500(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$1602(Llewa/laml/elements/MusicControlScreenElement;Llewa/laml/util/IndexedStringVariable;)Llewa/laml/util/IndexedStringVariable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mTitleVar:Llewa/laml/util/IndexedStringVariable;

    return-object p1
.end method

.method static synthetic access$1700(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$1702(Llewa/laml/elements/MusicControlScreenElement;Llewa/laml/util/IndexedStringVariable;)Llewa/laml/util/IndexedStringVariable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistVar:Llewa/laml/util/IndexedStringVariable;

    return-object p1
.end method

.method static synthetic access$1800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/TextScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mTextDisplay:Llewa/laml/elements/TextScreenElement;

    return-object v0
.end method

.method static synthetic access$1900(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Llewa/laml/elements/MusicControlScreenElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    return v0
.end method

.method static synthetic access$2000(Llewa/laml/elements/MusicControlScreenElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z

    return v0
.end method

.method static synthetic access$208(Llewa/laml/elements/MusicControlScreenElement;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    return v0
.end method

.method static synthetic access$2100(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->resetLyric()V

    return-void
.end method

.method static synthetic access$2300(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->resetMusicProgress()V

    return-void
.end method

.method static synthetic access$2400(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$2500(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2600(Llewa/laml/elements/MusicControlScreenElement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->needRequestLyric(Z)V

    return-void
.end method

.method static synthetic access$2700(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2800(Llewa/laml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->needRequestLyric()V

    return-void
.end method

.method static synthetic access$2900(Llewa/laml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->updateLyric(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Llewa/laml/elements/MusicControlScreenElement;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$3100(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$3202(Llewa/laml/elements/MusicControlScreenElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    return p1
.end method

.method static synthetic access$3300(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$400(Llewa/laml/elements/MusicControlScreenElement;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    return-object v0
.end method

.method static synthetic access$500(Llewa/laml/elements/MusicControlScreenElement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$502(Llewa/laml/elements/MusicControlScreenElement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    return-wide p1
.end method

.method static synthetic access$514(Llewa/laml/elements/MusicControlScreenElement;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iget-wide v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Llewa/laml/elements/MusicControlScreenElement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$602(Llewa/laml/elements/MusicControlScreenElement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$700(Llewa/laml/elements/MusicControlScreenElement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$800(Llewa/laml/elements/MusicControlScreenElement;)Llewa/laml/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mPositionVar:Llewa/laml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$900(Llewa/laml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private dispatchMediaKey(II)V
    .locals 6
    .parameter "action"
    .parameter "keyCode"

    .prologue
    .line 548
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 549
    .local v2, key:Landroid/view/KeyEvent;
    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/view/KeyEvent;->setSource(I)V

    .line 550
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 551
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 553
    :try_start_0
    invoke-interface {v0, v2}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "MusicControlScreenElement"

    const-string v4, "Unable to find IAudioService for media key event"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findSpectrumVisualizer(Llewa/laml/elements/ElementGroup;)Llewa/laml/elements/SpectrumVisualizerScreenElement;
    .locals 4
    .parameter "g"

    .prologue
    .line 452
    invoke-virtual {p1}, Llewa/laml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/elements/ScreenElement;

    .line 453
    .local v2, se:Llewa/laml/elements/ScreenElement;
    instance-of v3, v2, Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v3, :cond_1

    .line 454
    check-cast v2, Llewa/laml/elements/SpectrumVisualizerScreenElement;

    .line 461
    .end local v2           #se:Llewa/laml/elements/ScreenElement;
    :goto_0
    return-object v2

    .line 455
    .restart local v2       #se:Llewa/laml/elements/ScreenElement;
    :cond_1
    instance-of v3, v2, Llewa/laml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 456
    check-cast v2, Llewa/laml/elements/ElementGroup;

    .end local v2           #se:Llewa/laml/elements/ScreenElement;
    invoke-direct {p0, v2}, Llewa/laml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Llewa/laml/elements/ElementGroup;)Llewa/laml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    .line 457
    .local v1, ret:Llewa/laml/elements/SpectrumVisualizerScreenElement;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 458
    goto :goto_0

    .line 461
    .end local v1           #ret:Llewa/laml/elements/SpectrumVisualizerScreenElement;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeyCode(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 465
    const-string v0, "music_prev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const/16 v0, 0x58

    .line 469
    :goto_0
    return v0

    .line 467
    :cond_0
    const-string v0, "music_next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    const/16 v0, 0x57

    goto :goto_0

    .line 469
    :cond_1
    const-string v0, "music_play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "music_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x55

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLyric(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 4
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 138
    const-string v0, "enableLyric"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 139
    const-string v0, "updateLyricInterval"

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgressInterval:I

    .line 140
    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "music_duration"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mDurationVar:Llewa/laml/util/IndexedNumberVariable;

    .line 142
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "music_position"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mPositionVar:Llewa/laml/util/IndexedNumberVariable;

    .line 143
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "lyric_current_line_progress"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Llewa/laml/util/IndexedNumberVariable;

    .line 144
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "lyric_current"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricCurrentVar:Llewa/laml/util/IndexedStringVariable;

    .line 145
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "lyric_before"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeVar:Llewa/laml/util/IndexedStringVariable;

    .line 146
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "lyric_after"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterVar:Llewa/laml/util/IndexedStringVariable;

    .line 147
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "lyric_last"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricLastVar:Llewa/laml/util/IndexedStringVariable;

    .line 148
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "lyric_next"

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricNextVar:Llewa/laml/util/IndexedStringVariable;

    .line 150
    :cond_0
    return-void
.end method

.method private needRequestLyric()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llewa/laml/elements/MusicControlScreenElement;->needRequestLyric(Z)V

    .line 268
    return-void
.end method

.method private needRequestLyric(Z)V
    .locals 1
    .parameter "reset"

    .prologue
    .line 271
    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mIsPlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 273
    :cond_0
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->requestLyric()V

    .line 276
    :cond_1
    return-void
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v0, requestIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    .line 480
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "intent"
    .parameter "forceRequest"

    .prologue
    .line 483
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    if-eqz v4, :cond_0

    .line 484
    iget-boolean v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mIsPlaying:Z

    if-eqz v4, :cond_4

    .line 485
    if-nez p2, :cond_1

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 486
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    const-string v4, "album"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, albumName:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, artistName:Ljava/lang/String;
    if-nez p2, :cond_2

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v4}, Llewa/laml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v4}, Llewa/laml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 493
    :cond_2
    const-string v4, "album_uri"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 494
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "album_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, albumPath:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 496
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 497
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 499
    :cond_3
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum()V

    goto :goto_0

    .line 503
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #albumPath:Ljava/lang/String;
    .end local v2           #artistName:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_4
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private requestLyric()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.requestlyric"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, localIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    const-string v1, "com.lewa.player.requestlyric"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method private resetLyric()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 154
    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    .line 155
    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    .line 156
    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    .line 157
    iput-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    .line 158
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricLastVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricNextVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricCurrentVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method

.method private resetMusicProgress()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    .line 187
    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mPositionVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 189
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mDurationVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 190
    iput-wide v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    .line 191
    iput-wide v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mDuration:J

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 193
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 195
    :cond_0
    return-void
.end method

.method private safeRegisterReceiver()V
    .locals 6

    .prologue
    .line 509
    iget-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 511
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 513
    :try_start_0
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v5

    invoke-virtual {v5}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 522
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private safeUnregisterReceiver()V
    .locals 4

    .prologue
    .line 527
    iget-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mRegistered:Z

    if-nez v1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 529
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 531
    :try_start_0
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MusicControlScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMusicStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMediaButtonBroadcast(II)V
    .locals 10
    .parameter "action"
    .parameter "keyCode"

    .prologue
    const/4 v9, 0x0

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 539
    .local v1, eventtime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 540
    .local v0, event:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 541
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 543
    const-string v3, "forbid_double_click"

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method private setAlbumCover(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 567
    const-string v3, "playing"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 568
    .local v2, isPlaying:Z
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    const-string v3, "album"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    .line 571
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    .line 572
    const-string v3, "tmp_album_path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, albumPath:Ljava/lang/String;
    if-eqz v0, :cond_3

    :try_start_0
    new-instance v3, Llewa/util/InputStreamLoader;

    invoke-direct {v3, v0}, Llewa/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    :goto_1
    const/high16 v4, 0x40

    invoke-static {v3, v4}, Llewa/util/ImageUtils;->getBitmap(Llewa/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 578
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 579
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v4}, Llewa/laml/ScreenElementRoot;->getResourceDensity()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 580
    :cond_2
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v4, v3}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 582
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->requestUpdate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, e:Ljava/lang/Throwable;
    const/4 v3, 0x0

    iput-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 585
    const-string v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load album cover bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    new-instance v3, Llewa/util/InputStreamLoader;

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.lewa.player/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/laml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Llewa/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 580
    :cond_4
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setLyricCurrentLineProgressVar()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 257
    iget v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    if-ltz v2, :cond_0

    iget v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 258
    iget-wide v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    iget v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget v4, v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    iget v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    iget v6, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 259
    .local v0, d:D
    const-wide/high16 v2, 0x3ff0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 260
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v0, v1}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 264
    .end local v0           #d:D
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

.method private setLyricVar()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeVar:Llewa/laml/util/IndexedStringVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterVar:Llewa/laml/util/IndexedStringVariable;

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    if-ltz v0, :cond_2

    .line 243
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricCurrentVar:Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    iget v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 245
    iget v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    if-lez v0, :cond_2

    .line 246
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricLastVar:Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    iget v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 249
    :cond_2
    iget v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 250
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricNextVar:Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    iget v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 252
    :cond_3
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeVar:Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterVar:Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupButton(Llewa/laml/elements/ButtonScreenElement;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 590
    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p1, p0}, Llewa/laml/elements/ButtonScreenElement;->setListener(Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 592
    invoke-virtual {p1, p0}, Llewa/laml/elements/ButtonScreenElement;->setParent(Llewa/laml/elements/ElementGroup;)V

    .line 594
    :cond_0
    return-void
.end method

.method private updateLyric(Landroid/content/Intent;)V
    .locals 4
    .parameter "paramIntent"

    .prologue
    const/4 v3, 0x0

    .line 167
    const-string v2, "lyric_status"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 168
    .local v1, status:I
    const-string v2, "lyric_status"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 169
    :cond_0
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->resetLyric()V

    .line 170
    const-string v2, "lyric"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    .local v0, localArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    .line 173
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 174
    const-string v2, "lyric_time"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    .line 177
    .end local v0           #localArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    return-void
.end method

.method private updateMusic()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 597
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 598
    .local v0, isMusicActive:Z
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    if-nez v2, :cond_2

    move v1, v3

    .line 599
    .local v1, play:Z
    :goto_0
    if-eqz v0, :cond_3

    const/4 v2, 0x2

    :goto_1
    iput v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 600
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPlay:Llewa/laml/elements/ButtonScreenElement;

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 601
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    invoke-virtual {v2, v1}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 602
    if-eqz v0, :cond_0

    .line 603
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 604
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->requestAlbum()V

    .line 608
    :cond_0
    :goto_3
    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_1

    .line 609
    iget-object v4, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v0, :cond_6

    const-wide/high16 v2, 0x3ff0

    :goto_4
    invoke-virtual {v4, v2, v3}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 611
    :cond_1
    if-eqz v0, :cond_7

    const/high16 v2, 0x41f0

    :goto_5
    invoke-virtual {p0, v2}, Llewa/laml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 612
    return-void

    .end local v1           #play:Z
    :cond_2
    move v1, v4

    .line 598
    goto :goto_0

    .restart local v1       #play:Z
    :cond_3
    move v2, v3

    .line 599
    goto :goto_1

    :cond_4
    move v3, v4

    .line 600
    goto :goto_2

    .line 605
    :cond_5
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    invoke-virtual {v2}, Llewa/laml/elements/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 606
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mImageAlbumCover:Llewa/laml/elements/ImageScreenElement;

    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 609
    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_4

    .line 611
    :cond_7
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private updateMusicProgress(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 198
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->resetMusicProgress()V

    .line 199
    const-string v8, "duration"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 200
    .local v0, duration:J
    const-string v8, "position"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 201
    .local v3, position:J
    const-string v8, "time_stamp"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 202
    .local v6, time_stamp:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 203
    iput-wide v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mDuration:J

    .line 204
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mDurationVar:Llewa/laml/util/IndexedNumberVariable;

    long-to-double v9, v0

    invoke-virtual {v8, v9, v10}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v3

    sub-long/2addr v8, v6

    iput-wide v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    .line 206
    iget-wide v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mDuration:J

    iget-wide v10, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    .line 207
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mPositionVar:Llewa/laml/util/IndexedNumberVariable;

    iget-wide v9, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    long-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    .line 210
    :cond_0
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_6

    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    if-eqz v8, :cond_6

    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    array-length v8, v8

    if-lez v8, :cond_6

    .line 211
    const/4 v8, -0x1

    iput v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 212
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    .line 213
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, i:I
    :goto_0
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_5

    .line 216
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    aget v8, v8, v2

    int-to-long v8, v8

    iget-wide v10, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 217
    iget v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 218
    add-int/lit8 v8, v2, -0x1

    iput v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 220
    :cond_1
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_2
    :goto_1
    iget v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    if-eqz v8, :cond_3

    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 228
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    iget v10, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v5, v8, v9

    .line 229
    .local v5, start:I
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 215
    .end local v5           #start:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_4
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Llewa/laml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v8, p0, Llewa/laml/elements/MusicControlScreenElement;->mTimeArray:[I

    aget v8, v8, v2

    int-to-long v8, v8

    iget-wide v10, p0, Llewa/laml/elements/MusicControlScreenElement;->mPosition:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 224
    iput v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    goto :goto_1

    .line 232
    :cond_5
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->setLyricVar()V

    .line 233
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->setLyricCurrentLineProgressVar()V

    .line 234
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v8

    invoke-virtual {v8}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v8

    invoke-virtual {v8}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    iget v10, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgressInterval:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    .end local v2           #i:I
    :cond_6
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 615
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 616
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 618
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 620
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 623
    invoke-super {p0}, Llewa/laml/elements/ElementGroup;->init()V

    .line 624
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mButtonPause:Llewa/laml/elements/ButtonScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/elements/ButtonScreenElement;->show(Z)V

    .line 625
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    .line 626
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.miui.player.responselyric"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.lockscreen"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.UpdateAtristBG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.playStatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.refreshprogress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lewa.player.responselyric"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    .line 641
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->resume()V

    .line 642
    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 649
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 650
    .local v1, keyCode:I
    if-nez v1, :cond_0

    .line 657
    :goto_0
    return v2

    .line 653
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 654
    .local v0, handler:Landroid/os/Handler;
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 655
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 656
    invoke-direct {p0, v2, v1}, Llewa/laml/elements/MusicControlScreenElement;->dispatchMediaKey(II)V

    .line 657
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 666
    invoke-direct {p0, p1}, Llewa/laml/elements/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 667
    .local v1, keyCode:I
    if-nez v1, :cond_0

    .line 668
    const/4 v2, 0x0

    .line 696
    :goto_0
    return v2

    .line 670
    :cond_0
    invoke-direct {p0, v2, v1}, Llewa/laml/elements/MusicControlScreenElement;->dispatchMediaKey(II)V

    .line 671
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 672
    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Llewa/laml/elements/MusicControlScreenElement$5;

    invoke-direct {v3, p0, p1}, Llewa/laml/elements/MusicControlScreenElement$5;-><init>(Llewa/laml/elements/MusicControlScreenElement;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    iget-object v3, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 701
    invoke-super {p0, p1}, Llewa/laml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 702
    if-eqz p1, :cond_0

    .line 703
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->resume()V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 710
    iget-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    if-nez v0, :cond_0

    .line 711
    invoke-super {p0}, Llewa/laml/elements/ElementGroup;->pause()V

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    .line 713
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 714
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 716
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 717
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 721
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 724
    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    if-eqz v2, :cond_5

    .line 725
    invoke-super {p0}, Llewa/laml/elements/ElementGroup;->resume()V

    .line 726
    iput-boolean v0, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    .line 727
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v2}, Llewa/util/AudioOutputHelper;->hasActiveReceivers(Landroid/content/Context;)Z

    move-result v1

    .line 728
    .local v1, isMusicActive:Z
    if-eqz v1, :cond_0

    .line 729
    const/4 v2, 0x2

    iput v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 731
    :cond_0
    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_1

    .line 732
    iget-object v5, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStateVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v1, :cond_6

    const-wide/high16 v2, 0x3ff0

    :goto_0
    invoke-virtual {v5, v2, v3}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 735
    :cond_1
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 736
    .local v0, flagshow:Z
    :cond_3
    if-eqz v0, :cond_4

    .line 737
    invoke-virtual {p0, v4}, Llewa/laml/elements/MusicControlScreenElement;->show(Z)V

    .line 739
    :cond_4
    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_5

    .line 740
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->requestLyric()V

    .line 742
    .end local v0           #flagshow:Z
    .end local v1           #isMusicActive:Z
    :cond_5
    return-void

    .line 732
    .restart local v1       #isMusicActive:Z
    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public show(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 745
    invoke-super {p0, p1}, Llewa/laml/elements/ElementGroup;->show(Z)V

    .line 746
    if-eqz p1, :cond_0

    .line 747
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 749
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    .line 750
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->updateMusic()V

    .line 760
    :goto_0
    return-void

    .line 752
    :cond_0
    iput v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 753
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 754
    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 755
    invoke-direct {p0}, Llewa/laml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 756
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    invoke-virtual {v0, v2}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 758
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/laml/elements/MusicControlScreenElement;->requestFramerate(F)V

    goto :goto_0
.end method

.method protected updateSpectrumVisualizer()V
    .locals 3

    .prologue
    .line 763
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 764
    .local v0, isMusicActive:Z
    iget-object v1, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v1, :cond_0

    .line 765
    iget-object v2, p0, Llewa/laml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Llewa/laml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llewa/laml/elements/MusicControlScreenElement;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Llewa/laml/elements/MusicControlScreenElement;->isPaused:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 767
    :cond_0
    return-void

    .line 765
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
