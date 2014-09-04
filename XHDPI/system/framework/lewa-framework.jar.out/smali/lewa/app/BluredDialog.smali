.class public Llewa/app/BluredDialog;
.super Ljava/lang/Object;
.source "BluredDialog.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static setParam(Landroid/app/Dialog;)V
    .locals 14
    .parameter "dialog"

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 34
    .local v7, context:Landroid/content/Context;
    const-string v2, "window"

    invoke-virtual {v7, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 35
    .local v11, wm:Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 37
    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Llewa/util/SurfaceWrapper;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 39
    .local v10, shot:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v2, v13, :cond_1

    .line 40
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, blur:Landroid/graphics/Bitmap;
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 43
    const/4 v2, 0x5

    invoke-static {v10, v0, v2}, Llewa/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 44
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 46
    .local v9, rotation:I
    if-eqz v9, :cond_0

    .line 47
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    .local v5, matrix:Landroid/graphics/Matrix;
    mul-int/lit8 v2, v9, 0x5a

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v6, v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v4, v1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x5100

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v1, v4, v13

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 61
    .end local v0           #blur:Landroid/graphics/Bitmap;
    .end local v9           #rotation:I
    :cond_1
    return-void
.end method

.method public static showBlured(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "dialog"

    .prologue
    .line 27
    invoke-static {p0}, Llewa/app/BluredDialog;->setParam(Landroid/app/Dialog;)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 29
    return-object p0
.end method
