.class public Llewa/lockscreen/view/MusicControlScreenElement;
.super Llewa/lockscreen/view/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;,
        Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;,
        Llewa/lockscreen/view/MusicControlScreenElement$CheckStreamMusicRunnable;
    }
.end annotation


# static fields
.field private static final BUTTON_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final BUTTON_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final BUTTON_MUSIC_HIDE:Ljava/lang/String; = "music_hide"

.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static DebugMode:Z = false

.field private static final MEDIA_ALBUM:I = 0x2711

.field private static final MEDIA_CHANGE:I = 0x2710

.field private static final MUSIC_SHOW_NONE:I = 0x0

.field private static final MUSIC_SHOW_PLAY:I = 0x2

.field private static final MUSIC_SHOW_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private final MUSIC_PAUSE_STOP:Ljava/lang/String;

.field private final MUSIC_PLAY:Ljava/lang/String;

.field private final audioManager:Landroid/media/AudioManager;

.field private mAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAutoShow:Z

.field private mButtonHide:Llewa/lockscreen/view/ButtonScreenElement;

.field private mButtonNext:Llewa/lockscreen/view/ButtonScreenElement;

.field private mButtonPause:Llewa/lockscreen/view/ButtonScreenElement;

.field private mButtonPlay:Llewa/lockscreen/view/ButtonScreenElement;

.field private mButtonPrev:Llewa/lockscreen/view/ButtonScreenElement;

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

.field private mIsOnlineSongBlocking:Z

.field private mMusicState:Ljava/lang/Runnable;

.field private mMusicStatus:I

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mSetAutoShow:Z

.field private mTextDisplay:Llewa/lockscreen/view/TextScreenElement;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Llewa/lockscreen/view/MusicControlScreenElement;->DebugMode:Z

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 10
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 83
    const-string v6, "0"

    iput-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->MUSIC_PAUSE_STOP:Ljava/lang/String;

    .line 84
    const-string v6, "1"

    iput-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->MUSIC_PLAY:Ljava/lang/String;

    .line 87
    iput v7, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mWidth:I

    .line 88
    iput v7, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mHeight:I

    .line 94
    iget-object v6, p2, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->audioManager:Landroid/media/AudioManager;

    .line 97
    new-instance v6, Llewa/lockscreen/view/MusicControlScreenElement$1;

    invoke-direct {v6, p0}, Llewa/lockscreen/view/MusicControlScreenElement$1;-><init>(Llewa/lockscreen/view/MusicControlScreenElement;)V

    iput-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v6, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;

    invoke-direct {v6, p0, v9}, Llewa/lockscreen/view/MusicControlScreenElement$PlayerStatusListener;-><init>(Llewa/lockscreen/view/MusicControlScreenElement;Llewa/lockscreen/view/MusicControlScreenElement$1;)V

    iput-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 113
    new-instance v6, Llewa/lockscreen/view/MusicControlScreenElement$CheckStreamMusicRunnable;

    invoke-direct {v6, p0, v9}, Llewa/lockscreen/view/MusicControlScreenElement$CheckStreamMusicRunnable;-><init>(Llewa/lockscreen/view/MusicControlScreenElement;Llewa/lockscreen/view/MusicControlScreenElement$1;)V

    iput-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    .line 115
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 116
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_7

    .line 117
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llewa/lockscreen/view/ScreenElement;

    .line 118
    .local v4, screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-virtual {v4}, Llewa/lockscreen/view/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, nodeName:Ljava/lang/String;
    const-string v6, "music_prev"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    check-cast v4, Llewa/lockscreen/view/ButtonScreenElement;

    .end local v4           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPrev:Llewa/lockscreen/view/ButtonScreenElement;

    .line 116
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .restart local v4       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_1
    const-string v6, "music_next"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    check-cast v4, Llewa/lockscreen/view/ButtonScreenElement;

    .end local v4           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonNext:Llewa/lockscreen/view/ButtonScreenElement;

    goto :goto_1

    .line 123
    .restart local v4       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_2
    const-string v6, "music_play"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 124
    check-cast v4, Llewa/lockscreen/view/ButtonScreenElement;

    .end local v4           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPlay:Llewa/lockscreen/view/ButtonScreenElement;

    goto :goto_1

    .line 125
    .restart local v4       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_3
    const-string v6, "music_pause"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 126
    check-cast v4, Llewa/lockscreen/view/ButtonScreenElement;

    .end local v4           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPause:Llewa/lockscreen/view/ButtonScreenElement;

    goto :goto_1

    .line 127
    .restart local v4       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_4
    const-string v6, "music_display"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 128
    check-cast v4, Llewa/lockscreen/view/TextScreenElement;

    .end local v4           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mTextDisplay:Llewa/lockscreen/view/TextScreenElement;

    goto :goto_1

    .line 129
    .restart local v4       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_5
    const-string v6, "music_album_cover"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 130
    check-cast v4, Llewa/lockscreen/view/ImageScreenElement;

    .end local v4           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    goto :goto_1

    .line 131
    .restart local v4       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_6
    const-string v6, "music_hide"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    check-cast v4, Llewa/lockscreen/view/ButtonScreenElement;

    .end local v4           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonHide:Llewa/lockscreen/view/ButtonScreenElement;

    goto :goto_1

    .line 136
    .end local v2           #nodeName:Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPrev:Llewa/lockscreen/view/ButtonScreenElement;

    if-eqz v6, :cond_8

    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonNext:Llewa/lockscreen/view/ButtonScreenElement;

    if-eqz v6, :cond_8

    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPlay:Llewa/lockscreen/view/ButtonScreenElement;

    if-eqz v6, :cond_8

    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPause:Llewa/lockscreen/view/ButtonScreenElement;

    if-nez v6, :cond_9

    .line 138
    :cond_8
    new-instance v6, Llewa/lockscreen/view/DomParseException;

    const-string v7, "invalid music control"

    invoke-direct {v6, v7}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 141
    :cond_9
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPrev:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-direct {p0, v6}, Llewa/lockscreen/view/MusicControlScreenElement;->setupButton(Llewa/lockscreen/view/ButtonScreenElement;)V

    .line 142
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonNext:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-direct {p0, v6}, Llewa/lockscreen/view/MusicControlScreenElement;->setupButton(Llewa/lockscreen/view/ButtonScreenElement;)V

    .line 143
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPlay:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-direct {p0, v6}, Llewa/lockscreen/view/MusicControlScreenElement;->setupButton(Llewa/lockscreen/view/ButtonScreenElement;)V

    .line 144
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPause:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-direct {p0, v6}, Llewa/lockscreen/view/MusicControlScreenElement;->setupButton(Llewa/lockscreen/view/ButtonScreenElement;)V

    .line 145
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonHide:Llewa/lockscreen/view/ButtonScreenElement;

    if-eqz v6, :cond_a

    .line 146
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonHide:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-direct {p0, v6}, Llewa/lockscreen/view/MusicControlScreenElement;->setupButton(Llewa/lockscreen/view/ButtonScreenElement;)V

    .line 148
    :cond_a
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPause:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-virtual {v6, v7}, Llewa/lockscreen/view/ButtonScreenElement;->show(Z)V

    .line 150
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    if-eqz v6, :cond_b

    .line 151
    iget-object v6, p2, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v6}, Llewa/lockscreen/LockScreenResourceLoader;->newInstance(Landroid/content/Context;)Llewa/lockscreen/LockScreenResourceLoader;

    move-result-object v1

    .line 153
    .local v1, lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;
    new-instance v3, Llewa/lockscreen/view/ResourceManager;

    invoke-direct {v3, v1}, Llewa/lockscreen/view/ResourceManager;-><init>(Llewa/lockscreen/LockScreenResourceLoader;)V

    .line 154
    .local v3, resourcemanager:Llewa/lockscreen/view/ResourceManager;
    const-string v6, "photorecord.png"

    invoke-virtual {v3, v6}, Llewa/lockscreen/view/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 155
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_c

    .line 156
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mWidth:I

    .line 157
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mHeight:I

    .line 163
    .end local v1           #lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;
    .end local v3           #resourcemanager:Llewa/lockscreen/view/ResourceManager;
    :cond_b
    :goto_2
    const-string v6, "autoShow"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAutoShow:Z

    .line 164
    const-string v6, "autoShow"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mSetAutoShow:Z

    .line 166
    return-void

    .line 159
    .restart local v1       #lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;
    .restart local v3       #resourcemanager:Llewa/lockscreen/view/ResourceManager;
    :cond_c
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    invoke-virtual {v6}, Llewa/lockscreen/view/ImageScreenElement;->getWidth()I

    move-result v6

    iput v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mWidth:I

    .line 160
    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    invoke-virtual {v6}, Llewa/lockscreen/view/ImageScreenElement;->getHeight()I

    move-result v6

    iput v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mHeight:I

    goto :goto_2

    .end local v1           #lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;
    .end local v3           #resourcemanager:Llewa/lockscreen/view/ResourceManager;
    :cond_d
    move v6, v7

    .line 164
    goto :goto_3
.end method

.method static synthetic access$000(Llewa/lockscreen/view/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Llewa/lockscreen/view/MusicControlScreenElement;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement;->updateAlbumCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1000(Llewa/lockscreen/view/MusicControlScreenElement;)Llewa/lockscreen/view/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPause:Llewa/lockscreen/view/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$1102(Llewa/lockscreen/view/MusicControlScreenElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicStatus:I

    return p1
.end method

.method static synthetic access$1200(Llewa/lockscreen/view/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Llewa/lockscreen/view/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Llewa/lockscreen/view/MusicControlScreenElement;->updateMusic()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Llewa/lockscreen/view/MusicControlScreenElement;->DebugMode:Z

    return v0
.end method

.method static synthetic access$600(Llewa/lockscreen/view/MusicControlScreenElement;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Llewa/lockscreen/view/MusicControlScreenElement;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Llewa/lockscreen/view/MusicControlScreenElement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement;->updateMusicScreenStatus(Z)V

    return-void
.end method

.method static synthetic access$900(Llewa/lockscreen/view/MusicControlScreenElement;)Llewa/lockscreen/view/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPlay:Llewa/lockscreen/view/ButtonScreenElement;

    return-object v0
.end method

.method public static buildArtistName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "artistName"

    .prologue
    const/4 v1, 0x0

    .line 290
    if-eqz p0, :cond_4

    .line 291
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 293
    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 295
    :cond_1
    const-string v0, "\uff0c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const-string v0, "\uff0c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 297
    :cond_2
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 299
    :cond_3
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 302
    :cond_4
    return-object p0
.end method

.method private getKeyCode(Ljava/lang/String;)I
    .locals 2
    .parameter "btnName"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, keyCode:B
    const-string v1, "music_prev"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/16 v0, 0x58

    .line 187
    :goto_0
    return v0

    .line 180
    :cond_0
    const-string v1, "music_next"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const/16 v0, 0x57

    goto :goto_0

    .line 182
    :cond_1
    const-string v1, "music_play"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "music_pause"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    :cond_2
    const/16 v0, 0x55

    goto :goto_0

    .line 185
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    if-eqz v1, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/lockscreen/view/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    .line 199
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "intent"
    .parameter "flag"

    .prologue
    .line 203
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    if-nez v4, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v4, "album"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, album:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, artist:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 209
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v4}, Llewa/lockscreen/view/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v4}, Llewa/lockscreen/view/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 216
    :cond_2
    const-string v4, "album_uri"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 217
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "album_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, album_path:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 219
    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    .line 220
    :cond_3
    invoke-direct {p0}, Llewa/lockscreen/view/MusicControlScreenElement;->requestAlbum()V

    goto :goto_0

    .line 222
    :cond_4
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    iget-object v5, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Llewa/lockscreen/view/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private requestMusicInfo(Z)V
    .locals 4
    .parameter "isRequest"

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 498
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "lockscreen.action.SEND_MUSICINFO_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_0
    :try_start_0
    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_1
    return-void

    .line 500
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "lockscreen.action.SEND_MUSICINFO_REJECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MusicControlScreenElement"

    const-string v3, "requestMusicInfo failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mWidth:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mHeight:I

    if-eq v0, v2, :cond_1

    .line 308
    :cond_0
    iget v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v0, v2

    .line 309
    .local v9, scaleWidth:F
    iget v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mHeight:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 310
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 311
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 315
    .local v7, newBitmap:Landroid/graphics/Bitmap;
    move-object p1, v7

    .line 318
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #newBitmap:Landroid/graphics/Bitmap;
    .end local v8           #scaleHeight:F
    .end local v9           #scaleWidth:F
    :cond_1
    return-object p1
.end method

.method private sendMediaButtonBroadcast(II)V
    .locals 10
    .parameter "action"
    .parameter "keyCode"

    .prologue
    const/4 v9, 0x0

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 480
    .local v1, eventtime:J
    new-instance v8, Landroid/content/Intent;

    const-string v3, "com.lewa.lockscreen.control"

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 481
    .local v8, intent:Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 482
    .local v0, keyevent:Landroid/view/KeyEvent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v8, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 483
    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->context:Landroid/content/Context;

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private setAlbumCover(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 239
    sget-boolean v4, Llewa/lockscreen/view/MusicControlScreenElement;->DebugMode:Z

    if-eqz v4, :cond_0

    .line 240
    const-string v4, "MusicControlScreenElement"

    const-string v5, "setAlbumCover intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x0

    .line 245
    .local v0, coverBitmap:Landroid/graphics/Bitmap;
    const-string v4, "track"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    .line 246
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    .line 248
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mTextDisplay:Llewa/lockscreen/view/TextScreenElement;

    if-eqz v4, :cond_2

    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 250
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mTextDisplay:Llewa/lockscreen/view/TextScreenElement;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llewa/lockscreen/view/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 253
    :cond_2
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    if-nez v4, :cond_3

    .line 254
    sget-boolean v4, Llewa/lockscreen/view/MusicControlScreenElement;->DebugMode:Z

    if-eqz v4, :cond_0

    .line 255
    const-string v4, "MusicControlScreenElement"

    const-string v5, "setAlbumCover mImageAlbumCover is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_3
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 260
    sget-boolean v4, Llewa/lockscreen/view/MusicControlScreenElement;->DebugMode:Z

    if-eqz v4, :cond_4

    .line 261
    const-string v4, "MusicControlScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAlbumCover tmp_album_path is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_4
    :try_start_0
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v4, v4, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.lewa.player/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v6}, Llewa/lockscreen/view/MusicControlScreenElement;->buildArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "wr"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 268
    .local v3, pd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 269
    .local v2, inputStream:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #pd:Landroid/content/res/AssetFileDescriptor;
    :goto_1
    sget-boolean v4, Llewa/lockscreen/view/MusicControlScreenElement;->DebugMode:Z

    if-eqz v4, :cond_5

    .line 274
    const-string v4, "MusicControlScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAlbumCover coverBitmap is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_5
    if-eqz v0, :cond_7

    .line 278
    invoke-direct {p0, v0}, Llewa/lockscreen/view/MusicControlScreenElement;->toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 279
    sget-boolean v4, Llewa/lockscreen/view/MusicControlScreenElement;->DebugMode:Z

    if-eqz v4, :cond_6

    .line 280
    const-string v4, "MusicControlScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAlbumCover mAlbumCoverBm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_6
    :goto_2
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    iget-object v5, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Llewa/lockscreen/view/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MusicControlScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAlbumCover exception is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 282
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iput-object v4, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 283
    sget-boolean v4, Llewa/lockscreen/view/MusicControlScreenElement;->DebugMode:Z

    if-eqz v4, :cond_6

    .line 284
    const-string v4, "MusicControlScreenElement"

    const-string v5, "setAlbumCover DefaultAlbumCoverBm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setupButton(Llewa/lockscreen/view/ButtonScreenElement;)V
    .locals 0
    .parameter "buttonscreenelement"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1, p0}, Llewa/lockscreen/view/ButtonScreenElement;->setListener(Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;)V

    .line 171
    invoke-virtual {p1, p0}, Llewa/lockscreen/view/ButtonScreenElement;->setParent(Llewa/lockscreen/view/AnimatedScreenElement;)V

    .line 173
    :cond_0
    return-void
.end method

.method private toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"

    .prologue
    const/4 v10, 0x0

    .line 322
    iget v7, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mWidth:I

    if-nez v7, :cond_0

    iget v7, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mHeight:I

    if-eqz v7, :cond_1

    .line 323
    :cond_0
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 326
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 328
    .local v3, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 329
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 330
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 331
    .local v6, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 333
    .local v2, h:I
    const v1, -0xbdbdbe

    .line 334
    .local v1, color:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v10, v10, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 335
    .local v5, rect:Landroid/graphics/Rect;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 336
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 337
    const v7, -0xbdbdbe

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v7, v8, v9, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 339
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 340
    invoke-virtual {v0, p1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 342
    return-object v3
.end method

.method private updateAlbumCover(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    const-string v1, "MusicControlScreenElement"

    const-string v2, "setAlbumCover updateAlbumCover is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement;->toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, coverBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    invoke-virtual {v1, v0}, Llewa/lockscreen/view/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    const/4 v2, 0x1

    iput-boolean v2, v1, Llewa/lockscreen/view/ScreenContext;->mShouldUpdate:Z

    goto :goto_0
.end method

.method private updateMusic()V
    .locals 6

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, isPauseing:Z
    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 349
    .local v1, isPlaying:Z
    const/4 v2, 0x0

    .line 350
    .local v2, playBtnShow:Z
    if-nez v1, :cond_3

    .line 351
    const/4 v2, 0x1

    .line 355
    :goto_0
    iget-boolean v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    if-eqz v3, :cond_0

    .line 356
    const/4 v2, 0x0

    .line 358
    :cond_0
    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPlay:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-virtual {v3, v2}, Llewa/lockscreen/view/ButtonScreenElement;->show(Z)V

    .line 360
    if-nez v2, :cond_1

    .line 361
    const/4 v0, 0x1

    .line 363
    :cond_1
    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mButtonPause:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-virtual {v3, v0}, Llewa/lockscreen/view/ButtonScreenElement;->show(Z)V

    .line 365
    iget v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicStatus:I

    packed-switch v3, :pswitch_data_0

    .line 382
    :cond_2
    :goto_1
    return-void

    .line 353
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 367
    :pswitch_0
    if-nez v1, :cond_2

    .line 368
    const/4 v3, 0x1

    iput v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicStatus:I

    .line 369
    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v4, "music_state"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :pswitch_1
    if-eqz v1, :cond_2

    .line 374
    const/4 v3, 0x2

    iput v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicStatus:I

    .line 375
    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v4, "music_state"

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMusicScreenStatus(Z)V
    .locals 4
    .parameter "isPlaying"

    .prologue
    const/4 v3, 0x0

    .line 546
    if-eqz p1, :cond_2

    .line 547
    const/4 v2, 0x2

    iput v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicStatus:I

    .line 548
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v1, song_metadata_request:Landroid/content/Intent;
    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 550
    iget-boolean v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v2, :cond_1

    .line 551
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Llewa/lockscreen/view/MusicControlScreenElement;->show(Z)V

    .line 559
    .end local v1           #song_metadata_request:Landroid/content/Intent;
    :goto_0
    const-string v0, "0"

    .line 560
    .local v0, music_state:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 561
    const-string v0, "1"

    .line 563
    :cond_0
    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "music_state"

    invoke-static {v2, v3, v0}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void

    .line 553
    .end local v0           #music_state:Ljava/lang/String;
    .restart local v1       #song_metadata_request:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v3}, Llewa/lockscreen/view/MusicControlScreenElement;->show(Z)V

    goto :goto_0

    .line 556
    .end local v1           #song_metadata_request:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v3}, Llewa/lockscreen/view/MusicControlScreenElement;->show(Z)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    if-eqz v1, :cond_0

    .line 387
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Llewa/lockscreen/view/MusicControlScreenElement;->requestMusicInfo(Z)V

    .line 388
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->context:Landroid/content/Context;

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v1, v1, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 393
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v1, v1, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 394
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iput-object v3, v1, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    .line 396
    :cond_0
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 398
    iput-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 401
    :cond_1
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 403
    iput-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 405
    :cond_2
    invoke-super {p0}, Llewa/lockscreen/view/ElementGroup;->finish()V

    .line 406
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 409
    invoke-super {p0}, Llewa/lockscreen/view/ElementGroup;->init()V

    .line 411
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 418
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v2, "com.lewa.player.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v2, "com.lewa.player.lockscreen"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v2, "com.lewa.player.UpdateAtristBG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v2, "com.lewa.player.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string v2, "com.lewa.player.playStatus"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->context:Landroid/content/Context;

    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 425
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Llewa/lockscreen/view/MusicControlScreenElement;->updateMusicScreenStatus(Z)V

    .line 426
    iget-boolean v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mSetAutoShow:Z

    if-eqz v2, :cond_0

    .line 427
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lockscreen.action.SEND_MUSICINFO_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, music_status_request:Landroid/content/Intent;
    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 430
    .end local v1           #music_status_request:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "btnName"

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 3
    .parameter "btnName"

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v0

    .line 443
    .local v0, keyCode:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 444
    invoke-direct {p0, v2, v0}, Llewa/lockscreen/view/MusicControlScreenElement;->sendMediaButtonBroadcast(II)V

    .line 446
    :cond_0
    return v2
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "btnName"

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 7
    .parameter "btnName"

    .prologue
    const/4 v3, 0x1

    .line 450
    const-string v4, "MusicControlScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "######onButtonUp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v4, "music_hide"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    const-string v4, "music_control"

    const-string v5, "visibility"

    const-string v6, "false"

    invoke-static {v4, v5, v6}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Llewa/lockscreen/view/MusicControlScreenElement;->show(Z)V

    move v0, v3

    .line 473
    :goto_0
    return v0

    .line 456
    :cond_0
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, keyCode:I
    const/4 v0, 0x0

    .line 460
    .local v0, flag:Z
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 462
    invoke-direct {p0, v3, v1}, Llewa/lockscreen/view/MusicControlScreenElement;->sendMediaButtonBroadcast(II)V

    .line 463
    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v2, v3, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    .line 464
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 466
    new-instance v3, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;

    invoke-direct {v3, p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement$MusicStateRunnable;-><init>(Llewa/lockscreen/view/MusicControlScreenElement;Ljava/lang/String;)V

    iput-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicState:Ljava/lang/Runnable;

    .line 468
    iget-object v3, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 469
    const/4 v0, 0x1

    .line 470
    goto :goto_0

    .line 471
    .end local v2           #view:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v0, v0, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 488
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v0, v0, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    iget-object v0, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v0, v0, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    return-void
.end method

.method public show(Z)V
    .locals 5
    .parameter "isShow"

    .prologue
    .line 511
    invoke-super {p0, p1}, Llewa/lockscreen/view/ElementGroup;->show(Z)V

    .line 512
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicControlScreenElement;->requestMusicInfo(Z)V

    .line 513
    if-nez p1, :cond_0

    .line 514
    const/4 v1, 0x0

    iput v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mMusicStatus:I

    .line 515
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v1, v1, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 522
    :goto_0
    const-string v0, ""

    .line 523
    .local v0, visibility:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 524
    const-string v0, "true"

    .line 528
    :goto_1
    const-string v1, "music_control"

    const-string v2, "visibility"

    invoke-static {v1, v2, v0}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v1, "visibility"

    invoke-static {v1, v0}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void

    .line 518
    .end local v0           #visibility:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Llewa/lockscreen/view/MusicControlScreenElement;->updateMusic()V

    .line 519
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v1, v1, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 520
    iget-object v1, p0, Llewa/lockscreen/view/MusicControlScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v1, v1, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    iget-object v2, p0, Llewa/lockscreen/view/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 526
    .restart local v0       #visibility:Ljava/lang/String;
    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method
