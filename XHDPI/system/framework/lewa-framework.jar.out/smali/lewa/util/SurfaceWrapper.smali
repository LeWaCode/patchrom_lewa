.class public Llewa/util/SurfaceWrapper;
.super Ljava/lang/Object;
.source "SurfaceWrapper.java"


# static fields
.field private static final SURFACECONTROL:Ljava/lang/String; = "android.view.SurfaceControl"

.field private static mScreenshot:Ljava/lang/reflect/Method;

.field private static mScreenshotLayer:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-object v0, Llewa/util/SurfaceWrapper;->mScreenshot:Ljava/lang/reflect/Method;

    .line 10
    sput-object v0, Llewa/util/SurfaceWrapper;->mScreenshotLayer:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, class1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static screenShotForControl(II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    sget-object v3, Llewa/util/SurfaceWrapper;->mScreenshot:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 46
    const-string v3, "android.view.SurfaceControl"

    invoke-static {v3}, Llewa/util/SurfaceWrapper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, class1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 48
    const-string v3, "screenshot"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Llewa/util/SurfaceWrapper;->mScreenshot:Ljava/lang/reflect/Method;

    .line 50
    .end local v0           #class1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    sget-object v3, Llewa/util/SurfaceWrapper;->mScreenshot:Ljava/lang/reflect/Method;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 52
    check-cast v1, Landroid/graphics/Bitmap;

    .line 53
    .end local v1           #object:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #object:Ljava/lang/Object;
    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private static screenShotForControl(IIII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "width"
    .parameter "height"
    .parameter "minLayer"
    .parameter "maxLayer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    sget-object v2, Llewa/util/SurfaceWrapper;->mScreenshotLayer:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 58
    const-string v2, "android.view.SurfaceControl"

    invoke-static {v2}, Llewa/util/SurfaceWrapper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, class1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 60
    const-string v2, "screenshot"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v9

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llewa/util/SurfaceWrapper;->mScreenshotLayer:Ljava/lang/reflect/Method;

    .line 62
    .end local v0           #class1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    sget-object v2, Llewa/util/SurfaceWrapper;->mScreenshotLayer:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, object:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 64
    check-cast v1, Landroid/graphics/Bitmap;

    .line 66
    .end local v1           #object:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #object:Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 16
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 17
    invoke-static {p0, p1}, Llewa/util/SurfaceWrapper;->screenShotForControl(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 26
    :goto_0
    return-object v1

    .line 20
    :cond_0
    invoke-static {p0, p1}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static screenshot(IIII)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "minLayer"
    .parameter "maxLayer"

    .prologue
    .line 31
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 32
    invoke-static {p0, p1, p2, p3}, Llewa/util/SurfaceWrapper;->screenShotForControl(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 35
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    const/4 v1, 0x0

    goto :goto_0
.end method
