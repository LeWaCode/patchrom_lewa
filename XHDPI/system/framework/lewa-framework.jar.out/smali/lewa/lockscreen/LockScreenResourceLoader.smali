.class public abstract Llewa/lockscreen/LockScreenResourceLoader;
.super Ljava/lang/Object;
.source "LockScreenResourceLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenResourceLoader"

.field protected static final THEME_LOCKSCREEN_DEFAULT:Ljava/lang/String; = "/system/media/lockscreen.zip"

.field protected static final THEME_LOCKSCREEN_FILE_OVERRIDE:Ljava/lang/String; = "/data/system/face/.file_lockscreen"

.field protected static final THEME_LOCKSCREEN_OVERRIDE:Ljava/lang/String; = "/data/system/face/lockscreen"

.field protected static final THEME_LOCKSCREEN_OVERRIDE_DIR:Ljava/lang/String; = "/data/system/face/.lockscreen/face"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llewa/lockscreen/LockScreenResourceLoader;->context:Landroid/content/Context;

    return-void
.end method

.method protected static getLockscreenFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/face/lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/data/system/face/lockscreen"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/system/media/lockscreen.zip"

    goto :goto_0
.end method

.method public static getOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 75
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 77
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 78
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 80
    return-object v0
.end method

.method public static getSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 9
    .parameter "context"

    .prologue
    .line 84
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 85
    .local v3, window:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 86
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 88
    .local v2, point:Landroid/graphics/Point;
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 89
    const-class v4, Landroid/view/Display;

    const-string v5, "getRealSize"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_0
    const-string v4, "LockScreenResourceLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "point.y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  point.x:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v2           #point:Landroid/graphics/Point;
    :goto_1
    return-object v2

    .line 91
    .restart local v2       #point:Landroid/graphics/Point;
    :cond_0
    const-class v4, Landroid/view/Display;

    const-string v5, "getRawHeight"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 92
    const-class v4, Landroid/view/Display;

    const-string v5, "getRawWidth"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LockScreenResourceLoader"

    const-string v5, "getSize"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static newInstance(Landroid/content/Context;)Llewa/lockscreen/LockScreenResourceLoader;
    .locals 6
    .parameter "context"

    .prologue
    .line 43
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/face/.file_lockscreen"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, lockscreenIndicator:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/face"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v3, v4}, Llewa/os/FileUtilities;->forceMkdir(Ljava/io/File;Z)V

    .line 47
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/face"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Llewa/os/FileUtilities;->setPermissions(Ljava/io/File;)V

    .line 48
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/face/.lockscreen/face"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v3, v4}, Llewa/os/FileUtilities;->forceMkdir(Ljava/io/File;Z)V

    .line 49
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/face/.lockscreen"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Llewa/os/FileUtilities;->setPermissions(Ljava/io/File;)V

    .line 50
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/face/.lockscreen/face"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Llewa/os/FileUtilities;->setPermissions(Ljava/io/File;)V

    .line 51
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/media/lockscreen.zip"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "/data/system/face/.lockscreen"

    const-string v5, "755"

    invoke-static {v3, v4, v5}, Llewa/os/FileUtilities;->unzip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/data/system/face/.file_lockscreen"

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, indicator:Ljava/io/FileWriter;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1           #indicator:Ljava/io/FileWriter;
    :cond_0
    new-instance v3, Llewa/lockscreen/FileLoader;

    invoke-direct {v3, p0}, Llewa/lockscreen/FileLoader;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v3

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LockScreenResourceLoader"

    const-string v4, "Could not set lockscreen"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    new-instance v3, Llewa/lockscreen/ZipLoader;

    invoke-direct {v3, p0}, Llewa/lockscreen/ZipLoader;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method protected abstract getConfigFileName()Ljava/lang/String;
.end method

.method public abstract getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
.end method

.method public abstract getLockscreenFileStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract getManifestRoot()Lorg/w3c/dom/Element;
.end method
