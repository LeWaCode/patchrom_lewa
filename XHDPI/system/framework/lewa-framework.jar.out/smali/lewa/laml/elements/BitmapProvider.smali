.class public abstract Llewa/laml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/elements/BitmapProvider$VirtualScreenProvider;,
        Llewa/laml/elements/BitmapProvider$ScreenshotProvider;,
        Llewa/laml/elements/BitmapProvider$ResourceImageProvider;,
        Llewa/laml/elements/BitmapProvider$AppIconProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"

.field public static sBitmap:Landroid/graphics/Bitmap;

.field public static sHeight:I

.field public static sWidth:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mRoot:Llewa/laml/ScreenElementRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 87
    const/4 v0, 0x0

    sput-object v0, Llewa/laml/elements/BitmapProvider;->sBitmap:Landroid/graphics/Bitmap;

    .line 89
    sput v1, Llewa/laml/elements/BitmapProvider;->sWidth:I

    .line 91
    sput v1, Llewa/laml/elements/BitmapProvider;->sHeight:I

    return-void
.end method

.method public constructor <init>(Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Llewa/laml/elements/BitmapProvider;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 181
    return-void
.end method

.method public static create(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)Llewa/laml/elements/BitmapProvider;
    .locals 1
    .parameter "root"
    .parameter "type"

    .prologue
    .line 184
    const-string v0, "ResourceImage"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v0, p0}, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 193
    :goto_0
    return-object v0

    .line 186
    :cond_0
    const-string v0, "VirtualScreen"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Llewa/laml/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {v0, p0}, Llewa/laml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 188
    :cond_1
    const-string v0, "ApplicationIcon"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Llewa/laml/elements/BitmapProvider$AppIconProvider;

    invoke-direct {v0, p0}, Llewa/laml/elements/BitmapProvider$AppIconProvider;-><init>(Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 190
    :cond_2
    const-string v0, "Screenshot"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    new-instance v0, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;

    invoke-direct {v0, p0}, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;-><init>(Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 193
    :cond_3
    new-instance v0, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v0, p0}, Llewa/laml/elements/BitmapProvider$ResourceImageProvider;-><init>(Llewa/laml/ScreenElementRoot;)V

    goto :goto_0
.end method

.method public static screenshot(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    invoke-static {p0}, Llewa/laml/elements/BitmapProvider;->takeScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Llewa/laml/elements/BitmapProvider;->sBitmap:Landroid/graphics/Bitmap;

    .line 104
    const-string v0, "BitmapProvider"

    const-string v1, "take screenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public static takeScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"

    .prologue
    .line 95
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 96
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 97
    .local v0, display:Landroid/view/Display;
    invoke-static {}, Llewa/laml/elements/BitmapProvider$ScreenshotProvider;->access$000()I

    move-result v3

    mul-int/lit16 v1, v3, 0x2710

    .line 98
    .local v1, maxLayer:I
    sget v3, Llewa/laml/elements/BitmapProvider;->sWidth:I

    if-lez v3, :cond_0

    sget v3, Llewa/laml/elements/BitmapProvider;->sWidth:I

    :goto_0
    sget v4, Llewa/laml/elements/BitmapProvider;->sHeight:I

    if-lez v4, :cond_1

    sget v4, Llewa/laml/elements/BitmapProvider;->sHeight:I

    :goto_1
    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v1}, Llewa/util/SurfaceWrapper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/elements/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 198
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"

    .prologue
    .line 201
    iget-object v0, p0, Llewa/laml/elements/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 205
    invoke-virtual {p0}, Llewa/laml/elements/BitmapProvider;->reset()V

    .line 206
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
