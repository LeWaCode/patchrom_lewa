.class public Llewa/lockscreen/view/MusicInfoScreenElement;
.super Llewa/lockscreen/view/ElementGroup;
.source "MusicInfoScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;
    }
.end annotation


# static fields
.field private static final BUTTON_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final BUTTON_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static DebugMode:Z = false

.field private static final MEDIA_ALBUM:I = 0x2711

.field private static final MEDIA_CHANGE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MusicInfoScreenElement"


# instance fields
.field private final MUSIC_PAUSE_STOP:Ljava/lang/String;

.field private final MUSIC_PLAY:Ljava/lang/String;

.field private final audioManager:Landroid/media/AudioManager;

.field private mAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAutoShow:Z

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mTextDisplay:Llewa/lockscreen/view/TextScreenElement;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Llewa/lockscreen/view/MusicInfoScreenElement;->DebugMode:Z

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 8
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 57
    const-string v6, "0"

    iput-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->MUSIC_PAUSE_STOP:Ljava/lang/String;

    .line 58
    const-string v6, "1"

    iput-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->MUSIC_PLAY:Ljava/lang/String;

    .line 61
    iput v7, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mWidth:I

    .line 62
    iput v7, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mHeight:I

    .line 68
    iget-object v6, p2, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->audioManager:Landroid/media/AudioManager;

    .line 71
    new-instance v6, Llewa/lockscreen/view/MusicInfoScreenElement$1;

    invoke-direct {v6, p0}, Llewa/lockscreen/view/MusicInfoScreenElement$1;-><init>(Llewa/lockscreen/view/MusicInfoScreenElement;)V

    iput-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v6, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Llewa/lockscreen/view/MusicInfoScreenElement$PlayerStatusListener;-><init>(Llewa/lockscreen/view/MusicInfoScreenElement;Llewa/lockscreen/view/MusicInfoScreenElement$1;)V

    iput-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 88
    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 89
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 90
    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llewa/lockscreen/view/ScreenElement;

    .line 91
    .local v4, screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-virtual {v4}, Llewa/lockscreen/view/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, nodeName:Ljava/lang/String;
    const-string v6, "music_display"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    check-cast v4, Llewa/lockscreen/view/TextScreenElement;

    .end local v4           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iput-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mTextDisplay:Llewa/lockscreen/view/TextScreenElement;

    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .restart local v4       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_1
    const-string v6, "music_album_cover"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    check-cast v4, Llewa/lockscreen/view/ImageScreenElement;

    .end local v4           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iput-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    goto :goto_1

    .line 99
    .end local v2           #nodeName:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    if-eqz v6, :cond_3

    .line 100
    iget-object v6, p2, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v6}, Llewa/lockscreen/LockScreenResourceLoader;->newInstance(Landroid/content/Context;)Llewa/lockscreen/LockScreenResourceLoader;

    move-result-object v1

    .line 102
    .local v1, lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;
    new-instance v3, Llewa/lockscreen/view/ResourceManager;

    invoke-direct {v3, v1}, Llewa/lockscreen/view/ResourceManager;-><init>(Llewa/lockscreen/LockScreenResourceLoader;)V

    .line 103
    .local v3, resourcemanager:Llewa/lockscreen/view/ResourceManager;
    const-string v6, "photorecord.png"

    invoke-virtual {v3, v6}, Llewa/lockscreen/view/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 104
    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    .line 105
    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mWidth:I

    .line 106
    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mHeight:I

    .line 112
    .end local v1           #lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;
    .end local v3           #resourcemanager:Llewa/lockscreen/view/ResourceManager;
    :cond_3
    :goto_2
    const-string v6, "autoShow"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAutoShow:Z

    .line 113
    return-void

    .line 108
    .restart local v1       #lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;
    .restart local v3       #resourcemanager:Llewa/lockscreen/view/ResourceManager;
    :cond_4
    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    invoke-virtual {v6}, Llewa/lockscreen/view/ImageScreenElement;->getWidth()I

    move-result v6

    iput v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mWidth:I

    .line 109
    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    invoke-virtual {v6}, Llewa/lockscreen/view/ImageScreenElement;->getHeight()I

    move-result v6

    iput v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mHeight:I

    goto :goto_2
.end method

.method static synthetic access$000(Llewa/lockscreen/view/MusicInfoScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicInfoScreenElement;->setAlbumCover(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Llewa/lockscreen/view/MusicInfoScreenElement;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicInfoScreenElement;->updateAlbumCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Llewa/lockscreen/view/MusicInfoScreenElement;->DebugMode:Z

    return v0
.end method

.method static synthetic access$400(Llewa/lockscreen/view/MusicInfoScreenElement;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Llewa/lockscreen/view/MusicInfoScreenElement;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/lockscreen/view/MusicInfoScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    .line 124
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "intent"
    .parameter "flag"

    .prologue
    .line 128
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    if-nez v4, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v4, "album"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, album:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, artist:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 134
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v4}, Llewa/lockscreen/view/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v4}, Llewa/lockscreen/view/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 141
    :cond_2
    const-string v4, "album_uri"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 142
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "album_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, album_path:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 144
    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    .line 145
    :cond_3
    invoke-direct {p0}, Llewa/lockscreen/view/MusicInfoScreenElement;->requestAlbum()V

    goto :goto_0

    .line 147
    :cond_4
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    iget-object v5, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Llewa/lockscreen/view/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mWidth:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mHeight:I

    if-eq v0, v2, :cond_1

    .line 217
    :cond_0
    iget v0, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v0, v2

    .line 218
    .local v9, scaleWidth:F
    iget v0, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mHeight:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 219
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 220
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 224
    .local v7, newBitmap:Landroid/graphics/Bitmap;
    move-object p1, v7

    .line 227
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #newBitmap:Landroid/graphics/Bitmap;
    .end local v8           #scaleHeight:F
    .end local v9           #scaleWidth:F
    :cond_1
    return-object p1
.end method

.method private setAlbumCover(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 164
    sget-boolean v4, Llewa/lockscreen/view/MusicInfoScreenElement;->DebugMode:Z

    if-eqz v4, :cond_0

    .line 165
    const-string v4, "MusicInfoScreenElement"

    const-string v5, "setAlbumCover intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x0

    .line 170
    .local v0, coverBitmap:Landroid/graphics/Bitmap;
    const-string v4, "track"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumName:Ljava/lang/String;

    .line 171
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mArtistName:Ljava/lang/String;

    .line 173
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mTextDisplay:Llewa/lockscreen/view/TextScreenElement;

    if-eqz v4, :cond_2

    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mTextDisplay:Llewa/lockscreen/view/TextScreenElement;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mArtistName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llewa/lockscreen/view/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 178
    :cond_2
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    if-nez v4, :cond_3

    .line 179
    sget-boolean v4, Llewa/lockscreen/view/MusicInfoScreenElement;->DebugMode:Z

    if-eqz v4, :cond_0

    .line 180
    const-string v4, "MusicInfoScreenElement"

    const-string v5, "setAlbumCover mImageAlbumCover is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_3
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mArtistName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 185
    sget-boolean v4, Llewa/lockscreen/view/MusicInfoScreenElement;->DebugMode:Z

    if-eqz v4, :cond_4

    .line 186
    const-string v4, "MusicInfoScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAlbumCover tmp_album_path is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mArtistName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_4
    :try_start_0
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v4, v4, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.lewa.player/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mArtistName:Ljava/lang/String;

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

    .line 193
    .local v3, pd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 194
    .local v2, inputStream:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #pd:Landroid/content/res/AssetFileDescriptor;
    :goto_1
    sget-boolean v4, Llewa/lockscreen/view/MusicInfoScreenElement;->DebugMode:Z

    if-eqz v4, :cond_5

    .line 199
    const-string v4, "MusicInfoScreenElement"

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

    .line 202
    :cond_5
    if-eqz v0, :cond_7

    .line 203
    invoke-direct {p0, v0}, Llewa/lockscreen/view/MusicInfoScreenElement;->toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 204
    sget-boolean v4, Llewa/lockscreen/view/MusicInfoScreenElement;->DebugMode:Z

    if-eqz v4, :cond_6

    .line 205
    const-string v4, "MusicInfoScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAlbumCover mAlbumCoverBm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_6
    :goto_2
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    iget-object v5, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Llewa/lockscreen/view/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MusicInfoScreenElement"

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

    .line 207
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iput-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 208
    sget-boolean v4, Llewa/lockscreen/view/MusicInfoScreenElement;->DebugMode:Z

    if-eqz v4, :cond_6

    .line 209
    const-string v4, "MusicInfoScreenElement"

    const-string v5, "setAlbumCover DefaultAlbumCoverBm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"

    .prologue
    const/4 v10, 0x0

    .line 231
    iget v7, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mWidth:I

    if-nez v7, :cond_0

    iget v7, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mHeight:I

    if-eqz v7, :cond_1

    .line 232
    :cond_0
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicInfoScreenElement;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 235
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 237
    .local v3, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 238
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 239
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 240
    .local v6, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 242
    .local v2, h:I
    const v1, -0xbdbdbe

    .line 243
    .local v1, color:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v10, v10, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 244
    .local v5, rect:Landroid/graphics/Rect;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 245
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 246
    const v7, -0xbdbdbe

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v7, v8, v9, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 248
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 249
    invoke-virtual {v0, p1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 251
    return-object v3
.end method

.method private updateAlbumCover(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string v1, "MusicInfoScreenElement"

    const-string v2, "setAlbumCover updateAlbumCover is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0, p1}, Llewa/lockscreen/view/MusicInfoScreenElement;->toRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, coverBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mImageAlbumCover:Llewa/lockscreen/view/ImageScreenElement;

    invoke-virtual {v1, v0}, Llewa/lockscreen/view/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    const/4 v2, 0x1

    iput-boolean v2, v1, Llewa/lockscreen/view/ScreenContext;->mShouldUpdate:Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->context:Landroid/content/Context;

    iget-object v2, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 265
    iput-object v3, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 268
    :cond_1
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    iput-object v3, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 272
    :cond_2
    invoke-super {p0}, Llewa/lockscreen/view/ElementGroup;->finish()V

    .line 273
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 8

    .prologue
    .line 277
    invoke-super {p0}, Llewa/lockscreen/view/ElementGroup;->init()V

    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v4, "com.lewa.player.metachanged"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v4, "com.lewa.player.lockscreen"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v4, "com.lewa.player.UpdateAtristBG"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v4, "com.lewa.player.playstatechanged"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->context:Landroid/content/Context;

    iget-object v5, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    iget-object v7, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 287
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 288
    .local v1, isPlaying:Z
    if-eqz v1, :cond_1

    .line 289
    new-instance v3, Landroid/content/Intent;

    const-string v4, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, song_metadata_request:Landroid/content/Intent;
    iget-object v4, p0, Llewa/lockscreen/view/MusicInfoScreenElement;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    .end local v3           #song_metadata_request:Landroid/content/Intent;
    :goto_0
    const-string v2, "0"

    .line 296
    .local v2, music_state:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 297
    const-string v2, "1"

    .line 299
    :cond_0
    return-void

    .line 292
    .end local v2           #music_state:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Llewa/lockscreen/view/MusicInfoScreenElement;->show(Z)V

    goto :goto_0
.end method
