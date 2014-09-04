.class Llewa/laml/elements/BitmapProvider$ScreenshotProvider;
.super Llewa/laml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenshotProvider"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final KEYGUARD_LAYER:I = 0x0

.field public static final TAG_NAME:Ljava/lang/String; = "Screenshot"

.field private static final TYPE_LAYER_MULTIPLIER:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->getKeyguardLayer()I

    move-result v0

    sput v0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->KEYGUARD_LAYER:I

    return-void
.end method

.method public constructor <init>(Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Llewa/laml/elements/BitmapProvider;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 117
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 107
    sget v0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->KEYGUARD_LAYER:I

    return v0
.end method

.method private static getKeyguardLayer()I
    .locals 1

    .prologue
    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 142
    const/16 v0, 0xb

    .line 145
    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xc

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Llewa/laml/elements/BitmapProvider;->finish()V

    .line 135
    const/4 v0, 0x0

    sput-object v0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->sBitmap:Landroid/graphics/Bitmap;

    .line 136
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 121
    invoke-super {p0, p1}, Llewa/laml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getScreenWidth()I

    move-result v0

    sput v0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->sWidth:I

    .line 123
    iget-object v0, p0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getScreenHeight()I

    move-result v0

    sput v0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->sHeight:I

    .line 124
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Llewa/laml/elements/BitmapProvider;->reset()V

    .line 128
    sget v1, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->KEYGUARD_LAYER:I

    mul-int/lit16 v0, v1, 0x2710

    .line 129
    .local v0, maxLayer:I
    sget-object v1, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->sBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->sBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iput-object v1, p0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->getScreenHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Llewa/util/SurfaceWrapper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method
