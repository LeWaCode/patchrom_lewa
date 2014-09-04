.class public Llewa/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThemeResources"

.field private static final sDendityDpi:I

.field private static sDensityName:Ljava/lang/String;

.field private static final sResources:Landroid/content/res/Resources;

.field private static sThemeResources:Llewa/content/res/ThemeResources;

.field private static sWallpaper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFancyIcons:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFancyWallpaperFile:Ljava/util/zip/ZipFile;

.field private mIconFile:Ljava/util/zip/ZipFile;

.field private mIconV4:Z

.field private mLockStyleFile:Ljava/util/zip/ZipFile;

.field private mLockWallpaperPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    const/4 v1, 0x0

    sput-object v1, Llewa/content/res/ThemeResources;->sThemeResources:Llewa/content/res/ThemeResources;

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Llewa/content/res/ThemeResources;->sResources:Landroid/content/res/Resources;

    .line 52
    sget-object v1, Llewa/content/res/ThemeResources;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Llewa/content/res/ThemeResources;->sDendityDpi:I

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/face"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, CONFIG_THEME_CUSTOM_DIR:Ljava/io/File;
    sget-boolean v1, Llewa/os/Process;->IS_SYSTEM:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ed

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    sget v1, Llewa/content/res/ThemeResources;->sDendityDpi:I

    sparse-switch v1, :sswitch_data_0

    .line 79
    const-string v1, "xhdpi"

    sput-object v1, Llewa/content/res/ThemeResources;->sDensityName:Ljava/lang/String;

    .line 82
    :goto_1
    return-void

    .line 66
    :sswitch_0
    const-string v1, "ldpi"

    sput-object v1, Llewa/content/res/ThemeResources;->sDensityName:Ljava/lang/String;

    goto :goto_1

    .line 69
    :sswitch_1
    const-string v1, "mdpi"

    sput-object v1, Llewa/content/res/ThemeResources;->sDensityName:Ljava/lang/String;

    goto :goto_1

    .line 72
    :sswitch_2
    const-string v1, "hdpi"

    sput-object v1, Llewa/content/res/ThemeResources;->sDensityName:Ljava/lang/String;

    goto :goto_1

    .line 75
    :sswitch_3
    const-string v1, "xxhdpi"

    sput-object v1, Llewa/content/res/ThemeResources;->sDensityName:Ljava/lang/String;

    goto :goto_1

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x1e0 -> :sswitch_3
    .end sparse-switch
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-direct {p0}, Llewa/content/res/ThemeResources;->init()V

    .line 98
    return-void
.end method

.method private ensureFancyIcons()V
    .locals 7

    .prologue
    .line 130
    iget-object v5, p0, Llewa/content/res/ThemeResources;->mFancyIcons:Ljava/util/HashSet;

    if-nez v5, :cond_1

    .line 131
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Llewa/content/res/ThemeResources;->mFancyIcons:Ljava/util/HashSet;

    .line 132
    iget-object v5, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    if-eqz v5, :cond_1

    .line 133
    const-string v2, "fancy_icons/"

    .line 134
    .local v2, inner:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 136
    .local v3, innerLength:I
    iget-object v5, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 137
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 139
    .local v0, e:Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, z:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Llewa/content/res/ThemeResources;->isSubFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    iget-object v5, p0, Llewa/content/res/ThemeResources;->mFancyIcons:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/util/zip/ZipEntry;
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v2           #inner:Ljava/lang/String;
    .end local v3           #innerLength:I
    .end local v4           #z:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static varargs getAvaliablePath([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "paths"

    .prologue
    .line 228
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 229
    .local v3, p:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    .end local v3           #p:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 228
    .restart local v3       #p:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v3           #p:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getDensityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Llewa/content/res/ThemeResources;->sDensityName:Ljava/lang/String;

    return-object v0
.end method

.method private static getExternalAvaliablePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLockWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "mContext"

    .prologue
    .line 171
    :try_start_0
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v6

    iget-object v4, v6, Llewa/content/res/ThemeResources;->mLockWallpaperPath:Ljava/lang/String;

    .line 172
    .local v4, path:Ljava/lang/String;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 173
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 174
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 177
    sget v6, Llewa/content/res/ThemeResources;->sDendityDpi:I

    sparse-switch v6, :sswitch_data_0

    .line 193
    const/16 v5, 0x2d0

    .line 194
    .local v5, width:I
    const/16 v2, 0x500

    .line 197
    .local v2, height:I
    :goto_0
    invoke-static {v3, v5, v2}, Llewa/util/ImageUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 198
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 199
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 201
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Llewa/content/res/ThemeResources;->sWallpaper:Ljava/lang/ref/WeakReference;

    .line 202
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v7, Llewa/content/res/ThemeResources;->sResources:Landroid/content/res/Resources;

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #width:I
    :goto_1
    return-object v6

    .line 179
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #path:Ljava/lang/String;
    :sswitch_0
    const/16 v5, 0xf0

    .line 180
    .restart local v5       #width:I
    const/16 v2, 0x140

    .line 181
    .restart local v2       #height:I
    goto :goto_0

    .line 183
    .end local v2           #height:I
    .end local v5           #width:I
    :sswitch_1
    const/16 v5, 0x140

    .line 184
    .restart local v5       #width:I
    const/16 v2, 0x1e0

    .line 185
    .restart local v2       #height:I
    goto :goto_0

    .line 187
    .end local v2           #height:I
    .end local v5           #width:I
    :sswitch_2
    const/16 v5, 0x21c

    .line 188
    .restart local v5       #width:I
    const/16 v2, 0x3c0

    .line 189
    .restart local v2       #height:I
    goto :goto_0

    .line 204
    .end local v2           #height:I
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #width:I
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ThemeResources"

    const-string v7, "get wallpaper error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 206
    :catch_1
    move-exception v1

    .line 207
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "ThemeResources"

    const-string v7, "get wallpaper error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "mContext"

    .prologue
    .line 213
    :try_start_0
    sget-object v2, Llewa/content/res/ThemeResources;->sWallpaper:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 214
    sget-object v2, Llewa/content/res/ThemeResources;->sWallpaper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 215
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 216
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Llewa/content/res/ThemeResources;->sResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 224
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 218
    :cond_0
    invoke-static {p0}, Llewa/content/res/ThemeResources;->getLockWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ThemeResources"

    const-string v3, "get wallpaper error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 221
    :catch_1
    move-exception v1

    .line 222
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "ThemeResources"

    const-string v3, "get wallpaper error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getSystem()Llewa/content/res/ThemeResources;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Llewa/content/res/ThemeResources;->sThemeResources:Llewa/content/res/ThemeResources;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Llewa/content/res/ThemeResources;

    invoke-direct {v0}, Llewa/content/res/ThemeResources;-><init>()V

    sput-object v0, Llewa/content/res/ThemeResources;->sThemeResources:Llewa/content/res/ThemeResources;

    .line 87
    :cond_0
    sget-object v0, Llewa/content/res/ThemeResources;->sThemeResources:Llewa/content/res/ThemeResources;

    return-object v0
.end method

.method private varargs getZipFile([Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 3
    .parameter "paths"

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-static {p1}, Llewa/content/res/ThemeResources;->getAvaliablePath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, Llewa/content/res/ThemeConstants;->CONFIG_ICONS_STANDALONE_PATH:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v3, "/data/system/face/icons"

    aput-object v3, v2, v0

    const-string v3, "/system/media/theme/icons"

    aput-object v3, v2, v4

    const-string v3, "icons"

    invoke-static {v3}, Llewa/content/res/ThemeResources;->getExternalAvaliablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Llewa/content/res/ThemeResources;->getZipFile([Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    iput-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    .line 103
    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, Llewa/content/res/ThemeConstants;->CONFIG_LOCKSTYLE_STANDALONE_PATH:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v3, "/data/system/face/lockstyle"

    aput-object v3, v2, v0

    const-string v3, "/system/media/theme/lockstyle"

    aput-object v3, v2, v4

    const-string v3, "lockstyle"

    invoke-static {v3}, Llewa/content/res/ThemeResources;->getExternalAvaliablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Llewa/content/res/ThemeResources;->getZipFile([Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    iput-object v2, p0, Llewa/content/res/ThemeResources;->mLockStyleFile:Ljava/util/zip/ZipFile;

    .line 105
    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, Llewa/content/res/ThemeConstants;->CONFIG_FANCYWALLPAPER_STANDALONE_PATH:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v3, "/data/system/face/fancywallpaper"

    aput-object v3, v2, v0

    const-string v3, "/system/media/theme/fancywallpaper"

    aput-object v3, v2, v4

    const-string v3, "fancywallpaper"

    invoke-static {v3}, Llewa/content/res/ThemeResources;->getExternalAvaliablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Llewa/content/res/ThemeResources;->getZipFile([Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    iput-object v2, p0, Llewa/content/res/ThemeResources;->mFancyWallpaperFile:Ljava/util/zip/ZipFile;

    .line 108
    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, Llewa/content/res/ThemeConstants;->CONFIG_LOCKWALLPAPER_STANDALONE_PATH:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v3, "/data/system/face/lockwallpaper"

    aput-object v3, v2, v0

    const-string v3, "/system/media/theme/lockwallpaper"

    aput-object v3, v2, v4

    const-string v3, "lockwallpaper"

    invoke-static {v3}, Llewa/content/res/ThemeResources;->getExternalAvaliablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Llewa/content/res/ThemeResources;->getAvaliablePath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llewa/content/res/ThemeResources;->mLockWallpaperPath:Ljava/lang/String;

    .line 111
    const/4 v2, 0x0

    iput-object v2, p0, Llewa/content/res/ThemeResources;->mFancyIcons:Ljava/util/HashSet;

    .line 112
    iget-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    const-string v3, "res/"

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Llewa/content/res/ThemeResources;->mIconV4:Z

    .line 113
    return-void

    :cond_0
    move v0, v1

    .line 112
    goto :goto_0
.end method

.method public static isIconV4()Z
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v0

    iget-boolean v0, v0, Llewa/content/res/ThemeResources;->mIconV4:Z

    return v0
.end method

.method private isSubFolder(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, split:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 153
    :cond_0
    if-le v1, v5, :cond_2

    .line 158
    :cond_1
    :goto_1
    return v2

    .line 150
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 156
    :cond_3
    if-ne v1, v5, :cond_1

    .line 157
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    sput-object v0, Llewa/content/res/ThemeResources;->sThemeResources:Llewa/content/res/ThemeResources;

    .line 92
    sput-object v0, Llewa/content/res/ThemeResources;->sWallpaper:Ljava/lang/ref/WeakReference;

    .line 93
    invoke-static {v0}, Llewa/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public containsFancyLockscreenEntry(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 294
    iget-object v0, p0, Llewa/content/res/ThemeResources;->mLockStyleFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/content/res/ThemeResources;->mLockStyleFile:Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsFancyWallpaperEntry(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 275
    iget-object v0, p0, Llewa/content/res/ThemeResources;->mFancyWallpaperFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/content/res/ThemeResources;->mFancyWallpaperFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 301
    :try_start_0
    iget-object v0, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    :goto_0
    iput-object v1, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    .line 306
    :cond_0
    iget-object v0, p0, Llewa/content/res/ThemeResources;->mLockStyleFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1

    .line 308
    :try_start_1
    iget-object v0, p0, Llewa/content/res/ThemeResources;->mLockStyleFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :goto_1
    iput-object v1, p0, Llewa/content/res/ThemeResources;->mLockStyleFile:Ljava/util/zip/ZipFile;

    .line 313
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 314
    return-void

    .line 309
    :catch_0
    move-exception v0

    goto :goto_1

    .line 302
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getFancyIcons()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Llewa/content/res/ThemeResources;->ensureFancyIcons()V

    .line 126
    iget-object v0, p0, Llewa/content/res/ThemeResources;->mFancyIcons:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getFancyLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .parameter "size"

    .prologue
    .line 279
    iget-object v1, p0, Llewa/content/res/ThemeResources;->mLockStyleFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    .line 281
    :try_start_0
    iget-object v1, p0, Llewa/content/res/ThemeResources;->mLockStyleFile:Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advance/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 282
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    .line 283
    if-eqz p2, :cond_0

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 285
    :cond_0
    iget-object v1, p0, Llewa/content/res/ThemeResources;->mLockStyleFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v1

    .line 287
    :catch_0
    move-exception v1

    .line 290
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFancyWallpaperFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .parameter "size"

    .prologue
    .line 260
    iget-object v1, p0, Llewa/content/res/ThemeResources;->mFancyWallpaperFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    .line 262
    :try_start_0
    iget-object v1, p0, Llewa/content/res/ThemeResources;->mFancyWallpaperFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 263
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    .line 264
    if-eqz p2, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 266
    :cond_0
    iget-object v1, p0, Llewa/content/res/ThemeResources;->mFancyWallpaperFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 271
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v1

    .line 268
    :catch_0
    move-exception v1

    .line 271
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "res"
    .parameter "path"

    .prologue
    .line 317
    iget-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_2

    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 321
    .local v0, entry:Ljava/util/zip/ZipEntry;
    :try_start_0
    iget-boolean v2, p0, Llewa/content/res/ThemeResources;->mIconV4:Z

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 326
    :goto_0
    if-eqz v0, :cond_1

    .line 327
    iget-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 328
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 333
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 336
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    .end local v1           #is:Ljava/io/InputStream;
    :goto_1
    return-object v2

    .line 324
    .restart local v0       #entry:Ljava/util/zip/ZipEntry;
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_0
    :try_start_1
    iget-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 336
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    .end local v1           #is:Ljava/io/InputStream;
    :cond_2
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 330
    .restart local v0       #entry:Ljava/util/zip/ZipEntry;
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 333
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 331
    :catch_1
    move-exception v2

    .line 333
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public getIconStream(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "res"
    .parameter "path"

    .prologue
    .line 340
    iget-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_0

    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 344
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 345
    iget-object v2, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 351
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 348
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 351
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .parameter "size"

    .prologue
    .line 241
    iget-object v1, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 243
    :try_start_0
    iget-object v1, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 244
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    .line 245
    if-eqz p2, :cond_0

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 247
    :cond_0
    iget-object v1, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 252
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v1

    .line 252
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasFancyIcon(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 120
    invoke-direct {p0}, Llewa/content/res/ThemeResources;->ensureFancyIcons()V

    .line 121
    iget-object v0, p0, Llewa/content/res/ThemeResources;->mFancyIcons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 256
    iget-object v0, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Llewa/content/res/ThemeResources;->mIconFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
