.class Llewa/laml/elements/BitmapProvider$AppIconProvider;
.super Llewa/laml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppIconProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ApplicationIcon"


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Llewa/laml/elements/BitmapProvider;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 58
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 10
    .parameter "src"

    .prologue
    .line 27
    invoke-super {p0, p1}, Llewa/laml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 28
    if-eqz p1, :cond_2

    .line 29
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, as:[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 31
    iget-object v6, p0, Llewa/laml/elements/BitmapProvider$AppIconProvider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v6}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v6

    iget-object v1, v6, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    .line 33
    .local v1, c:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 35
    .local v3, d:Landroid/graphics/drawable/Drawable;
    instance-of v6, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 36
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Llewa/laml/elements/BitmapProvider$AppIconProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    .end local v0           #as:[Ljava/lang/String;
    .end local v1           #c:Landroid/content/Context;
    :goto_0
    return-void

    .line 38
    .restart local v0       #as:[Ljava/lang/String;
    .restart local v1       #c:Landroid/content/Context;
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x105

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 40
    .local v5, size:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Llewa/laml/elements/BitmapProvider$AppIconProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v6, p0, Llewa/laml/elements/BitmapProvider$AppIconProvider;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #size:I
    :catch_0
    move-exception v4

    .line 46
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "BitmapProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to get icon for src of ApplicationIcon type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    .end local v1           #c:Landroid/content/Context;
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v6, "BitmapProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid src of ApplicationIcon type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v0           #as:[Ljava/lang/String;
    :cond_2
    const-string v6, "BitmapProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid src of ApplicationIcon type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
