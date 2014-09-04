.class public Llewa/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/content/res/IconCustomizer$IconConfig;,
        Llewa/content/res/IconCustomizer$CustomizedIconsListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ATOP:I = 0x96

.field private static final ALPHA_MIN:I = 0xe6

.field public static final CUSTOMIZED_ICON_PATH:Ljava/lang/String; = null

.field public static final CUSTOMIZED_ICON_STAMP:Ljava/lang/String; = null

.field public static final DEFAULT_ICON_SIZE:I = 0x60

.field public static final FANCY_ICONS_INNER_PATH:Ljava/lang/String; = "fancy_icons/"

.field private static final ICON_ALIAS:Ljava/lang/String; = "/system/etc/icon_alias.config"

.field public static final ICON_SCALE_480P:F = 0.8888889f

.field private static final ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "icon_transform.config"

.field private static final LOG_TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final MOD_BUILT_IN_ICONS:Ljava/lang/String; = "/system/media/theme/mod_icons"

.field private static final MOD_EXTRA_ICONS_DIR:Ljava/lang/String; = "/data/data/com.lewa.market/files/mod_icons/"

.field private static final MOD_ICONS_NAME:Ljava/lang/String; = "mod_icons"

.field public static mIconScale:F

.field public static mRawIconScale:F

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sCanvasForTransformBitmap:Landroid/graphics/Canvas;

.field private static sContext:Landroid/content/Context;

.field public static sCustomizedIconHeight:I

.field public static sCustomizedIconRect:Landroid/graphics/Rect;

.field public static sCustomizedIconWidth:I

.field private static final sDensity:I

.field private static final sIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

.field private static sIconMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconTransformMatrix:Landroid/graphics/Matrix;

.field private static sModIcons:Ljava/util/zip/ZipFile;

.field private static sPaintForBackground:Landroid/graphics/Paint;

.field private static sPaintForBitmap:Landroid/graphics/Paint;

.field private static sPaintForMask:Landroid/graphics/Paint;

.field private static final sRawIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sScaledDensity:I

.field private static final sScreenWidth:I

.field private static sSystemResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x3

    .line 69
    sget-boolean v0, Llewa/os/Process;->IS_SYSTEM:Z

    if-eqz v0, :cond_1

    const-string v0, "/data/system/customized_icons/"

    :goto_0
    sput-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".stamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    .line 95
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Llewa/content/res/IconCustomizer;->sDensity:I

    .line 97
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Llewa/content/res/IconCustomizer;->sScreenWidth:I

    .line 99
    sget v0, Llewa/content/res/IconCustomizer;->sDensity:I

    invoke-static {v0}, Llewa/content/res/IconCustomizer;->scaleDensity(I)I

    move-result v0

    sput v0, Llewa/content/res/IconCustomizer;->sScaledDensity:I

    .line 105
    sput v2, Llewa/content/res/IconCustomizer;->mIconScale:F

    .line 107
    sput v2, Llewa/content/res/IconCustomizer;->mRawIconScale:F

    .line 110
    const/16 v0, 0x60

    invoke-static {v0}, Llewa/content/res/IconCustomizer;->scalePixel(I)I

    move-result v0

    sput v0, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 112
    sget v0, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sput v0, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Llewa/content/res/IconCustomizer;->sCustomizedIconRect:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    .line 120
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 122
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 124
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Llewa/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Llewa/content/res/IconCustomizer;->sPaintForBitmap:Landroid/graphics/Paint;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Llewa/content/res/IconCustomizer;->sPaintForBackground:Landroid/graphics/Paint;

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Llewa/content/res/IconCustomizer;->sPaintForMask:Landroid/graphics/Paint;

    .line 136
    sput-object v5, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    .line 138
    sput-object v5, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 145
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    const-string v1, "/system/etc/icon_alias.config"

    invoke-static {v0, v1}, Llewa/content/res/IconAlias;->loadAlias(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 146
    sget-object v0, Llewa/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 147
    sget-object v0, Llewa/content/res/IconCustomizer;->sPaintForBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 148
    sget-object v0, Llewa/content/res/IconCustomizer;->sPaintForMask:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 149
    sget-boolean v0, Llewa/os/Shell;->sLoaded:Z

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    const/16 v1, 0x1ff

    invoke-static {v0, v1}, Llewa/os/Shell;->mkdirs(Ljava/lang/String;I)Z

    .line 152
    :cond_0
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Llewa/os/Process;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    return-void
.end method

.method public static addIconMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 171
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public static checkModIcons()V
    .locals 15

    .prologue
    .line 221
    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 223
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v14, "/system/media/theme/mod_icons"

    invoke-interface {v13, v14}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v13

    iget-wide v8, v13, Llibcore/io/StructStat;->st_size:J

    .line 224
    .local v8, stamp:J
    const-wide/16 v5, 0x0

    .line 225
    .local v5, modifiedTime:J
    new-instance v3, Ljava/io/File;

    const-string v13, "/data/data/com.lewa.market/files/mod_icons/"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v3, extra:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 227
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 229
    :cond_0
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v14, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-interface {v13, v14}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v13

    iget-wide v0, v13, Llibcore/io/StructStat;->st_ctime:J

    .line 230
    .local v0, createdTime:J
    cmp-long v13, v5, v0

    if-gtz v13, :cond_3

    .line 231
    new-instance v10, Ljava/io/File;

    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v10, stampFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 233
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 234
    .local v7, reader:Ljava/io/BufferedReader;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 235
    .local v11, stampLast:J
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 236
    cmp-long v13, v8, v11

    if-nez v13, :cond_2

    .line 255
    .end local v0           #createdTime:J
    .end local v3           #extra:Ljava/io/File;
    .end local v5           #modifiedTime:J
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #stamp:J
    .end local v10           #stampFile:Ljava/io/File;
    .end local v11           #stampLast:J
    :goto_0
    return-void

    .line 240
    .restart local v0       #createdTime:J
    .restart local v3       #extra:Ljava/io/File;
    .restart local v5       #modifiedTime:J
    .restart local v8       #stamp:J
    .restart local v10       #stampFile:Ljava/io/File;
    :cond_1
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Llewa/os/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    const/16 v14, 0x1ff

    invoke-static {v13, v14}, Llewa/os/Shell;->chmod(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v0           #createdTime:J
    .end local v3           #extra:Ljava/io/File;
    .end local v5           #modifiedTime:J
    .end local v8           #stamp:J
    .end local v10           #stampFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 253
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "IconCustomizer"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #createdTime:J
    .restart local v3       #extra:Ljava/io/File;
    .restart local v5       #modifiedTime:J
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v8       #stamp:J
    .restart local v10       #stampFile:Ljava/io/File;
    .restart local v11       #stampLast:J
    :cond_2
    const/4 v13, 0x0

    :try_start_1
    invoke-static {v13}, Llewa/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 249
    .end local v0           #createdTime:J
    .end local v3           #extra:Ljava/io/File;
    .end local v5           #modifiedTime:J
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #stamp:J
    .end local v10           #stampFile:Ljava/io/File;
    .end local v11           #stampLast:J
    :cond_3
    :goto_1
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v14, "/system/media/theme/mod_icons"

    invoke-interface {v13, v14}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v13

    iget-wide v8, v13, Llibcore/io/StructStat;->st_size:J

    .line 250
    .restart local v8       #stamp:J
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Llewa/os/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_STAMP:Ljava/lang/String;

    const/16 v14, 0x1ff

    invoke-static {v13, v14}, Llewa/os/Shell;->chmod(Ljava/lang/String;I)Z

    goto :goto_0

    .line 247
    .end local v8           #stamp:J
    :cond_4
    sget-object v13, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    const/16 v14, 0x1ff

    invoke-static {v13, v14}, Llewa/os/Shell;->mkdirs(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static checkSystemUi()V
    .locals 4

    .prologue
    .line 534
    const-string v1, "/data/system/customized_icons/com_android_systemui.png"

    .line 535
    .local v1, sysuiIconPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/customized_icons/com_android_systemui.png"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    const-string v2, "rm /data/system/customized_icons/com_android_systemui.png"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Llewa/os/SuExecuter;->runCommandForResult(Ljava/lang/String;Z)Llewa/os/SuExecuter$CommandResult;

    .line 539
    :cond_0
    return-void
.end method

.method public static clearCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    sget-object v1, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v0, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 260
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 262
    :try_start_1
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 263
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    sput-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    .line 265
    sput-object v2, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 266
    return-void

    .line 260
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 263
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 269
    sget-boolean v0, Llewa/os/Shell;->sLoaded:Z

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string v0, "IconCustomizer"

    const-string v1, "clearCustomizedIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    sget-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-static {v0}, Llewa/os/Shell;->remove(Ljava/lang/String;)Z

    .line 275
    sget-object v0, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    const/16 v1, 0x1ff

    invoke-static {v0, v1}, Llewa/os/Shell;->mkdirs(Ljava/lang/String;I)Z

    .line 276
    invoke-static {}, Llewa/content/res/IconCustomizer;->clearCache()V

    goto :goto_0

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/os/Shell;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modCover"

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 508
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 509
    .local v3, baseWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 510
    .local v7, baseHeight:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 511
    .local v1, basePixels:[I
    sget-object v9, Llewa/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 512
    .local v9, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v9, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 513
    if-eqz p1, :cond_0

    .line 514
    sget-object v0, Llewa/content/res/IconCustomizer;->sCustomizedIconRect:Landroid/graphics/Rect;

    sget-object v4, Llewa/content/res/IconCustomizer;->sPaintForMask:Landroid/graphics/Paint;

    invoke-virtual {v9, p1, v11, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 516
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 517
    if-eqz p2, :cond_1

    .line 518
    sget-object v10, Llewa/content/res/IconCustomizer;->sPaintForBackground:Landroid/graphics/Paint;

    .line 519
    .local v10, p:Landroid/graphics/Paint;
    invoke-static {v3, v7, v1}, Llewa/content/res/IconCustomizer;->getAverageColor(II[I)I

    move-result v8

    .line 520
    .local v8, bgColor:I
    const v0, 0xffffff

    and-int/2addr v0, v8

    if-eqz v0, :cond_3

    .line 521
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v8, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 525
    :goto_0
    sget-object v0, Llewa/content/res/IconCustomizer;->sCustomizedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v9, p2, v11, v0, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 527
    .end local v8           #bgColor:I
    .end local v10           #p:Landroid/graphics/Paint;
    :cond_1
    if-eqz p3, :cond_2

    .line 528
    sget-object v0, Llewa/content/res/IconCustomizer;->sCustomizedIconRect:Landroid/graphics/Rect;

    sget-object v2, Llewa/content/res/IconCustomizer;->sPaintForBitmap:Landroid/graphics/Paint;

    invoke-virtual {v9, p3, v11, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 530
    :cond_2
    return-object p0

    .line 523
    .restart local v8       #bgColor:I
    .restart local v10       #p:Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modCover"

    .prologue
    .line 472
    invoke-static {p1}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 473
    .local v2, mask:Landroid/graphics/Bitmap;
    invoke-static {p2}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    .local v0, background:Landroid/graphics/Bitmap;
    invoke-static {p3}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 475
    .local v1, cover:Landroid/graphics/Bitmap;
    invoke-static {p0, v2, v0, v1}, Llewa/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private static composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "base"
    .parameter "modMask"
    .parameter "modBackground"
    .parameter "modCover"

    .prologue
    .line 480
    invoke-static {}, Llewa/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 481
    sget-object v6, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v6, v6, Llewa/content/res/IconCustomizer$IconConfig;->filters:Ljava/util/List;

    if-eqz v6, :cond_1

    sget-object v6, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v6, v6, Llewa/content/res/IconCustomizer$IconConfig;->filters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 482
    invoke-static {p0}, Llewa/graphics/BitmapInfo;->getBitmapInfo(Landroid/graphics/Bitmap;)Llewa/graphics/BitmapInfo;

    move-result-object v4

    .line 483
    .local v4, imgData:Llewa/graphics/BitmapInfo;
    sget-object v6, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v6, v6, Llewa/content/res/IconCustomizer$IconConfig;->filters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/graphics/IBitmapFilter;

    .line 484
    .local v2, filter:Llewa/graphics/IBitmapFilter;
    invoke-interface {v2, v4}, Llewa/graphics/IBitmapFilter;->process(Llewa/graphics/BitmapInfo;)V

    goto :goto_0

    .line 486
    .end local v2           #filter:Llewa/graphics/IBitmapFilter;
    :cond_0
    invoke-static {v4}, Llewa/graphics/BitmapInfo;->getBitmap(Llewa/graphics/BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 488
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #imgData:Llewa/graphics/BitmapInfo;
    :cond_1
    sget-object v6, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    if-eqz v6, :cond_2

    .line 489
    sget-object v6, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, v6}, Llewa/content/res/IconCustomizer;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 491
    :cond_2
    invoke-static {p1}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 492
    .local v5, mask:Landroid/graphics/Bitmap;
    invoke-static {p2}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 493
    .local v0, background:Landroid/graphics/Bitmap;
    invoke-static {p3}, Llewa/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 494
    .local v1, cover:Landroid/graphics/Bitmap;
    invoke-static {p0, v5, v0, v1}, Llewa/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "icon"
    .parameter "ratio"

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x4000

    .line 440
    sget v6, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 441
    .local v6, targetWidth:I
    sget v5, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 444
    .local v5, targetHeight:I
    instance-of v7, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    move-object v1, p0

    .line 445
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 446
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 447
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    if-nez v7, :cond_0

    .line 448
    sget-object v7, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 450
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 451
    .local v4, sourceWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 456
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .local v3, sourceHeight:I
    :goto_0
    invoke-virtual {p0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Llewa/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 460
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 461
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 462
    int-to-float v7, v6

    int-to-float v8, v4

    mul-float/2addr v8, p1

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    int-to-float v8, v5

    int-to-float v9, v3

    mul-float/2addr v9, p1

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 464
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 465
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 466
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 467
    return-object v0

    .line 453
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #sourceHeight:I
    .end local v4           #sourceWidth:I
    :cond_1
    move v4, v6

    .line 454
    .restart local v4       #sourceWidth:I
    move v3, v5

    .restart local v3       #sourceHeight:I
    goto :goto_0
.end method

.method private static ensureIconConfigLoaded()V
    .locals 1

    .prologue
    .line 283
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_0

    .line 284
    invoke-static {}, Llewa/content/res/IconCustomizer;->loadIconConfig()Llewa/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    sput-object v0, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    .line 285
    invoke-static {}, Llewa/content/res/IconCustomizer;->makeIconMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sput-object v0, Llewa/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 287
    :cond_0
    return-void
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "base"

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llewa/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "base"
    .parameter "mask"
    .parameter "background"
    .parameter "cover"
    .parameter "cropOutside"

    .prologue
    .line 553
    invoke-static {p0, p4}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 554
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, p3}, Llewa/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "base"
    .parameter "cropOutside"

    .prologue
    .line 546
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 547
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const-string v2, "icon_background.png"

    const-string v3, "icon_cover.png"

    invoke-static {v0, v1, v2, v3}, Llewa/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateShortcutDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 564
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 565
    .local v0, base:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v2

    invoke-static {v0, v2}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 566
    .local v1, icon:Landroid/graphics/Bitmap;
    const-string v2, "icon_mask.png"

    const-string v3, "icon_shortcut_background.png"

    const-string v4, "icon_shortcut_cover.png"

    invoke-static {v1, v2, v3, v4}, Llewa/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static generateShortcutDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "base"

    .prologue
    .line 558
    const/4 v1, 0x0

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 559
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, "icon_mask.png"

    const-string v2, "icon_shortcut_background.png"

    const-string v3, "icon_shortcut_cover.png"

    invoke-static {v0, v1, v2, v3}, Llewa/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method private static getAverageColor(II[I)I
    .locals 18
    .parameter "height"
    .parameter "width"
    .parameter "pixels"

    .prologue
    .line 981
    const/16 v5, 0xe6

    .line 983
    .local v5, minAlpha:I
    const/16 v13, 0xa

    .line 986
    .local v13, stride:I
    const v6, 0x3e4ccccd

    .line 989
    .local v6, minSaturation:F
    div-int/lit8 v1, p1, 0xa

    .line 990
    .local v1, hSamples:I
    div-int/lit8 v14, p0, 0xa

    .line 993
    .local v14, vSamples:I
    const/4 v15, 0x3

    new-array v12, v15, [F

    fill-array-data v12, :array_0

    .line 998
    .local v12, sampleTotals:[F
    const/4 v15, 0x3

    new-array v2, v15, [F

    .line 1000
    .local v2, hsv:[F
    const/4 v11, 0x0

    .line 1001
    .local v11, sampleSize:I
    move v4, v14

    .local v4, j:I
    div-int v9, p0, v14

    .local v9, sV:I
    :goto_0
    move/from16 v0, p0

    if-ge v4, v0, :cond_2

    .line 1003
    mul-int v7, v4, p1

    .line 1004
    .local v7, s:I
    move v3, v1

    .local v3, i:I
    div-int v8, p1, v1

    .local v8, sH:I
    :goto_1
    move/from16 v0, p1

    if-ge v3, v0, :cond_1

    .line 1006
    add-int v15, v7, v3

    aget v10, p2, v15

    .line 1008
    .local v10, sample:I
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    const/16 v16, 0xe6

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 1009
    invoke-static {v10, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1010
    const/4 v15, 0x1

    aget v15, v2, v15

    cmpl-float v15, v15, v6

    if-ltz v15, :cond_0

    .line 1012
    const/4 v15, 0x0

    aget v16, v12, v15

    const/16 v17, 0x0

    aget v17, v2, v17

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 1013
    const/4 v15, 0x1

    aget v16, v12, v15

    const/16 v17, 0x1

    aget v17, v2, v17

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 1014
    const/4 v15, 0x2

    aget v16, v12, v15

    const/16 v17, 0x2

    aget v17, v2, v17

    add-float v16, v16, v17

    aput v16, v12, v15

    .line 1015
    add-int/lit8 v11, v11, 0x1

    .line 1004
    :cond_0
    add-int/2addr v3, v8

    goto :goto_1

    .line 1001
    .end local v10           #sample:I
    :cond_1
    add-int/2addr v4, v9

    goto :goto_0

    .line 1020
    .end local v3           #i:I
    .end local v7           #s:I
    .end local v8           #sH:I
    :cond_2
    if-nez v11, :cond_3

    .line 1021
    const/4 v15, 0x0

    .line 1028
    :goto_2
    return v15

    .line 1023
    :cond_3
    const/4 v15, 0x0

    aget v16, v12, v15

    int-to-float v0, v11

    move/from16 v17, v0

    div-float v16, v16, v17

    aput v16, v12, v15

    .line 1024
    const/4 v15, 0x1

    aget v16, v12, v15

    int-to-float v0, v11

    move/from16 v17, v0

    div-float v16, v16, v17

    aput v16, v12, v15

    .line 1025
    const/4 v15, 0x2

    aget v16, v12, v15

    int-to-float v0, v11

    move/from16 v17, v0

    div-float v16, v16, v17

    aput v16, v12, v15

    .line 1028
    const/16 v15, 0x96

    invoke-static {v15, v12}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v15

    goto :goto_2

    .line 993
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static getCachedFileName(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 701
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 702
    .local v0, filename:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 703
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    :cond_0
    return-object v0
.end method

.method private static getContentRatio(Landroid/graphics/drawable/Drawable;)F
    .locals 4
    .parameter "icon"

    .prologue
    .line 968
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 969
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 970
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Llewa/util/ImageUtils;->findMaxSide(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 971
    .local v1, side:I
    if-lez v1, :cond_0

    .line 972
    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 975
    :goto_0
    return v2

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #side:I
    :cond_0
    const/high16 v2, -0x4080

    goto :goto_0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 624
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Llewa/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomizedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "context"
    .parameter "appInfo"
    .parameter "useAppIcon"

    .prologue
    .line 657
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Llewa/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 658
    .local v1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v2, :cond_0

    .line 659
    const-string v2, "lewa.png"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_0
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 662
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_1

    .line 663
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getDrawable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v1, v2}, Llewa/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 665
    :cond_1
    return-object v0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "context"
    .parameter "info"

    .prologue
    .line 630
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 632
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 640
    .local v0, className:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Llewa/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    return-object v2

    .line 633
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_1

    .line 634
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 635
    .restart local v1       #packageName:Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0

    .line 637
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 638
    .restart local v1       #packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 682
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 683
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Llewa/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 685
    :cond_0
    return-object v0
.end method

.method private static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "resId"
    .parameter "useAppIcon"

    .prologue
    .line 645
    invoke-static {p1, p2, p4}, Llewa/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 646
    .local v1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 647
    const-string v2, "lewa.png"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_0
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 650
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_1

    .line 651
    invoke-static {p0, p1, p3}, Llewa/content/res/IconCustomizer;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v1, v2}, Llewa/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 653
    :cond_1
    return-object v0
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "original"

    .prologue
    .line 670
    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Llewa/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 671
    .local v1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 672
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 673
    invoke-static {p0, v1, p3}, Llewa/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 675
    :cond_0
    return-object v0
.end method

.method public static getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 709
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Llewa/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconFromCache(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Llewa/content/res/IconCustomizer;->getCachedFileName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, filename:Ljava/lang/String;
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 693
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 694
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 696
    :cond_0
    return-object v0
.end method

.method private static declared-synchronized getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 10
    .parameter "context"
    .parameter
    .parameter "original"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v6, Llewa/content/res/IconCustomizer;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Llewa/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 716
    invoke-static {p1}, Llewa/content/res/IconCustomizer;->getCachedFileName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, filename:Ljava/lang/String;
    const/4 v1, 0x0

    .line 719
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 720
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-boolean v7, v7, Llewa/content/res/IconCustomizer$IconConfig;->isComposeThemeIcon:Z

    invoke-static {v5, v7}, Llewa/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 719
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 722
    :cond_0
    if-nez v1, :cond_4

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v5, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-boolean v5, v5, Llewa/content/res/IconCustomizer$IconConfig;->isUseModIcon:Z

    if-eqz v5, :cond_1

    .line 725
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 726
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Llewa/content/res/IconCustomizer;->getModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 725
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 729
    .end local v4           #j:I
    :cond_1
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 730
    const/4 v5, 0x0

    invoke-static {p2, v5}, Llewa/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v5

    invoke-static {p2, v5}, Llewa/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 732
    :cond_2
    if-eqz v0, :cond_3

    .line 733
    const-string v5, "IconCustomizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generate customized icon for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v5, "icon_mask.png"

    const-string v7, "icon_background.png"

    const-string v8, "icon_cover.png"

    invoke-static {v0, v5, v7, v8}, Llewa/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 736
    invoke-static {v2, v0, p0}, Llewa/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 738
    :cond_3
    invoke-static {v0}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 740
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz v1, :cond_5

    .line 741
    sget-object v7, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 742
    :try_start_1
    sget-object v5, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    :cond_5
    monitor-exit v6

    return-object v1

    .line 743
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 714
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #i:I
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "appInfo"

    .prologue
    .line 586
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "IconCustomizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable failed. packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 571
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-static {p0, v0, v1}, Llewa/content/res/IconCustomizer;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 576
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 577
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p2}, Llewa/content/res/IconCustomizer;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 580
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IconCustomizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable failed. packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method private static getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 595
    sget v0, Llewa/content/res/IconCustomizer;->sScaledDensity:I

    invoke-static {p0, p1, v0}, Llewa/content/res/IconCustomizer;->getDrawableForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "res"
    .parameter "resId"
    .parameter "density"

    .prologue
    .line 600
    :try_start_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 601
    .local v4, value:Landroid/util/TypedValue;
    const/4 v5, 0x1

    invoke-virtual {p0, p1, p2, v4, v5}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 602
    const/4 v3, 0x0

    .line 603
    .local v3, isColorDrawable:Z
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_0

    .line 605
    const/4 v3, 0x1

    .line 607
    :cond_0
    if-nez v3, :cond_1

    .line 608
    iget-object v5, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, file:Ljava/lang/String;
    const-string v5, ".xml"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 610
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iget v6, v4, Landroid/util/TypedValue;->assetCookie:I

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 612
    .local v2, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    invoke-static {p0, v4, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 613
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #isColorDrawable:Z
    .end local v4           #value:Landroid/util/TypedValue;
    :goto_0
    return-object v0

    .line 618
    :catch_0
    move-exception v5

    .line 620
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 617
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "name"

    .prologue
    .line 918
    sget-object v2, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 919
    :try_start_0
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 920
    .local v0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    monitor-exit v2

    .line 924
    :goto_0
    return-object v1

    .line 923
    :cond_0
    monitor-exit v2

    .line 924
    const/4 v1, 0x0

    goto :goto_0

    .line 923
    .end local v0           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "filename"

    .prologue
    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, pathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 905
    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 907
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Llewa/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 914
    :goto_0
    return-object v3

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 914
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 908
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 790
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getFancyIconRelativePath(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    .line 1051
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 1052
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1053
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1060
    .local v0, className:Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Llewa/content/res/IconCustomizer;->getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v0           #className:Ljava/lang/String;
    .end local v1           #packageName:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1054
    :cond_0
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_1

    .line 1055
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1056
    .restart local v1       #packageName:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .restart local v0       #className:Ljava/lang/String;
    goto :goto_0

    .line 1058
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 1032
    const/4 v5, 0x1

    invoke-static {p0, p1, v5}, Llewa/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 1033
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v4

    .line 1034
    .local v4, res:Llewa/content/res/ThemeResources;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1035
    .local v1, name:Ljava/lang/String;
    const-string v5, ".png"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1036
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".png"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1038
    :cond_1
    invoke-virtual {v4, v1}, Llewa/content/res/ThemeResources;->hasFancyIcon(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1039
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fancy_icons/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, relativePath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "manifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llewa/content/res/ThemeResources;->hasIcon(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1045
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #relativePath:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 1111
    if-nez p1, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    :goto_0
    return-object v0

    .line 1115
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1118
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3
    .parameter "path"

    .prologue
    .line 750
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 752
    const/16 v2, 0x1a4

    invoke-static {p0, v2}, Llewa/os/Shell;->chmod(Ljava/lang/String;I)Z

    .line 753
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v2

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getIconConfig()Llewa/content/res/IconCustomizer$IconConfig;
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Llewa/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 291
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    return-object v0
.end method

.method private static getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "name"

    .prologue
    .line 928
    sget-object v2, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 929
    :try_start_0
    sget-object v1, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 930
    .local v0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    monitor-exit v2

    .line 934
    :goto_0
    return-object v1

    .line 933
    :cond_0
    monitor-exit v2

    .line 934
    const/4 v1, 0x0

    goto :goto_0

    .line 933
    .end local v0           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getIconFromTheme(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filename"
    .parameter "compose"

    .prologue
    .line 938
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v1

    sget-object v2, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Llewa/content/res/ThemeResources;->getDensityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Llewa/content/res/ThemeResources;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 940
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 941
    sget v1, Llewa/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 948
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 949
    invoke-static {v0}, Llewa/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 950
    if-eqz p1, :cond_2

    const-string v1, "icon_mask_theme.png"

    const-string v2, "icon_background_theme.png"

    const-string v3, "icon_cover_theme.png"

    invoke-static {v0, v1, v2, v3}, Llewa/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 953
    :goto_1
    return-object v1

    .line 943
    :cond_1
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v1

    sget-object v2, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v2, p0}, Llewa/content/res/ThemeResources;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_0

    .line 945
    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 950
    goto :goto_1

    .line 953
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getIconNames(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .parameter "packageName"
    .parameter "className"
    .parameter "mapPackagename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v2, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-object v2

    .line 1072
    :cond_1
    invoke-static {}, Llewa/content/res/ThemeResources;->isIconV4()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1073
    if-eqz p1, :cond_2

    .line 1074
    invoke-static {p1}, Llewa/content/res/IconCustomizer;->getV4IconName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    sget-object v3, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1076
    .local v1, mappingName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1077
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    .end local v1           #mappingName:Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_0

    .line 1081
    invoke-static {p0}, Llewa/content/res/IconCustomizer;->getV4IconName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    sget-object v3, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1083
    .restart local v1       #mappingName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1084
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1088
    .end local v1           #mappingName:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, fileName:Ljava/lang/String;
    sget-object v3, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1090
    .restart local v1       #mappingName:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1091
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    if-eqz p1, :cond_5

    .line 1095
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_5
    if-eqz p2, :cond_0

    .line 1100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    sget-object v3, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mappingName:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1102
    .restart local v1       #mappingName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1103
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static getModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "fileName"

    .prologue
    .line 847
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.lewa.market/files/mod_icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .local v2, iconFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 850
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Llewa/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 894
    :goto_0
    return-object v0

    .line 853
    :catch_0
    move-exception v4

    .line 857
    :cond_0
    :goto_1
    sget-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    .line 858
    new-instance v2, Ljava/io/File;

    .end local v2           #iconFile:Ljava/io/File;
    const-string v4, "/system/media/theme/mod_icons"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    .restart local v2       #iconFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 861
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipFile;

    const-string v5, "/system/media/theme/mod_icons"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    sput-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 866
    :cond_1
    :goto_2
    sget-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;

    if-eqz v4, :cond_3

    .line 867
    const/4 v3, 0x0

    .line 869
    .local v3, is:Ljava/io/InputStream;
    :try_start_2
    sget-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 870
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_2

    .line 871
    sget-object v4, Llewa/content/res/IconCustomizer;->sModIcons:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 872
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Llewa/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 877
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 880
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_3
    :goto_3
    sget-object v4, Llewa/content/res/IconCustomizer;->sContext:Landroid/content/Context;

    if-eqz v4, :cond_5

    .line 881
    const/4 v3, 0x0

    .line 883
    .restart local v3       #is:Ljava/io/InputStream;
    :try_start_3
    sget-object v4, Llewa/content/res/IconCustomizer;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mod_icons/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 884
    if-eqz v3, :cond_4

    .line 885
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Llewa/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 886
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 891
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 874
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 877
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 875
    :catch_2
    move-exception v4

    .line 877
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :catchall_0
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 891
    :cond_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 894
    .end local v3           #is:Ljava/io/InputStream;
    :cond_5
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 889
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v4

    .line 891
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    :catchall_1
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 862
    .end local v3           #is:Ljava/io/InputStream;
    :catch_4
    move-exception v4

    goto :goto_2

    .line 851
    :catch_5
    move-exception v4

    goto/16 :goto_1
.end method

.method public static getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filename"

    .prologue
    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 830
    invoke-static {p0}, Llewa/content/res/IconCustomizer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 831
    if-nez v0, :cond_0

    .line 832
    const/4 v1, 0x0

    invoke-static {p0, v1}, Llewa/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 833
    if-nez v0, :cond_0

    .line 834
    invoke-static {p0}, Llewa/content/res/IconCustomizer;->getModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 838
    :cond_0
    if-eqz v0, :cond_1

    .line 839
    sget-object v2, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 840
    :try_start_0
    sget-object v1, Llewa/content/res/IconCustomizer;->sRawIconCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    monitor-exit v2

    .line 843
    :cond_1
    return-object v0

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .locals 2
    .parameter "icon"
    .parameter "cropOutside"

    .prologue
    .line 794
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getScaleRatioRaw(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->baseScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private static getScaleRatioRaw(Landroid/graphics/drawable/Drawable;Z)F
    .locals 9
    .parameter "icon"
    .parameter "cropOutside"

    .prologue
    const/high16 v7, 0x3f80

    .line 798
    invoke-static {}, Llewa/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 799
    instance-of v6, p0, Landroid/graphics/drawable/PaintDrawable;

    if-nez v6, :cond_3

    .line 802
    instance-of v6, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 803
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 804
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 805
    .local v5, sourceWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 810
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v4, sourceHeight:I
    :goto_0
    if-lez v5, :cond_3

    if-lez v5, :cond_3

    .line 811
    sget v6, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v6, v6

    int-to-float v8, v5

    div-float v3, v6, v8

    .line 812
    .local v3, ratioW:F
    sget v6, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v6, v6

    int-to-float v8, v4

    div-float v2, v6, v8

    .line 813
    .local v2, ratioH:F
    if-eqz p1, :cond_1

    .line 814
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 824
    .end local v2           #ratioH:F
    .end local v3           #ratioW:F
    .end local v4           #sourceHeight:I
    .end local v5           #sourceWidth:I
    :goto_1
    return v6

    .line 807
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 808
    .restart local v5       #sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .restart local v4       #sourceHeight:I
    goto :goto_0

    .line 816
    .restart local v2       #ratioH:F
    .restart local v3       #ratioW:F
    :cond_1
    invoke-static {p0}, Llewa/content/res/IconCustomizer;->getContentRatio(Landroid/graphics/drawable/Drawable;)F

    move-result v1

    .line 817
    .local v1, contentRatio:F
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_2

    const/high16 v6, 0x4000

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_2

    .line 818
    const v6, 0x3f666666

    mul-float/2addr v6, v1

    goto :goto_1

    .line 820
    :cond_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_1

    .end local v1           #contentRatio:F
    .end local v2           #ratioH:F
    .end local v3           #ratioW:F
    .end local v4           #sourceHeight:I
    .end local v5           #sourceWidth:I
    :cond_3
    move v6, v7

    .line 824
    goto :goto_1
.end method

.method private static getV4IconName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hdpiSizeToCurrent(F)F
    .locals 2
    .parameter "pixelSize"

    .prologue
    .line 436
    sget v0, Llewa/content/res/IconCustomizer;->sDensity:I

    int-to-float v0, v0

    const/high16 v1, 0x4370

    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static loadIconAlias(Ljava/lang/String;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 160
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 161
    sget-object v0, Llewa/content/res/IconCustomizer;->sIconMapping:Ljava/util/HashMap;

    invoke-static {v0, p0}, Llewa/content/res/IconAlias;->loadAlias(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private static loadIconConfig()Llewa/content/res/IconCustomizer$IconConfig;
    .locals 24

    .prologue
    .line 295
    new-instance v5, Llewa/content/res/IconCustomizer$IconConfig;

    invoke-direct {v5}, Llewa/content/res/IconCustomizer$IconConfig;-><init>()V

    .line 296
    .local v5, config:Llewa/content/res/IconCustomizer$IconConfig;
    const/4 v13, 0x0

    .line 298
    .local v13, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v21

    const-string v22, "icon_transform.config"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Llewa/content/res/ThemeResources;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 299
    if-nez v13, :cond_0

    .line 399
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 401
    :goto_0
    return-object v5

    .line 302
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    .line 304
    .local v9, doc:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_17

    .line 305
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 306
    .local v8, configs:Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .local v12, i:I
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .local v3, N:I
    :goto_1
    if-ge v12, v3, :cond_17

    .line 307
    invoke-interface {v8, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 308
    .local v16, node:Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 309
    move-object/from16 v0, v16

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v11, v0

    .line 310
    .local v11, ele:Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    .line 311
    .local v15, name:Ljava/lang/String;
    const-string v21, "IconFilters"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 312
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->filters:Ljava/util/List;

    .line 306
    .end local v11           #ele:Lorg/w3c/dom/Element;
    .end local v15           #name:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 313
    .restart local v11       #ele:Lorg/w3c/dom/Element;
    .restart local v15       #name:Ljava/lang/String;
    :cond_2
    const-string v21, "IconShadow"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 314
    const-string v21, "radius"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 315
    .local v20, radius:Ljava/lang/String;
    const-string v21, "color"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, color:Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 317
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sget-object v22, Llewa/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->shadowRadius:F

    .line 320
    :cond_3
    if-eqz v4, :cond_1

    const-string v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 321
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->shadowColor:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 396
    .end local v3           #N:I
    .end local v4           #color:Ljava/lang/String;
    .end local v8           #configs:Lorg/w3c/dom/NodeList;
    .end local v9           #doc:Lorg/w3c/dom/Element;
    .end local v11           #ele:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #node:Lorg/w3c/dom/Node;
    .end local v20           #radius:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 397
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v21, "IconCustomizer"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 323
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v3       #N:I
    .restart local v8       #configs:Lorg/w3c/dom/NodeList;
    .restart local v9       #doc:Lorg/w3c/dom/Element;
    .restart local v11       #ele:Lorg/w3c/dom/Element;
    .restart local v12       #i:I
    .restart local v15       #name:Ljava/lang/String;
    .restart local v16       #node:Lorg/w3c/dom/Node;
    :cond_4
    :try_start_3
    const-string v21, "Config"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 324
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, configName:Ljava/lang/String;
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, configValue:Ljava/lang/String;
    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    .line 327
    const-string v21, "UseModIcon"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 328
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->isUseModIcon:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 399
    .end local v3           #N:I
    .end local v6           #configName:Ljava/lang/String;
    .end local v7           #configValue:Ljava/lang/String;
    .end local v8           #configs:Lorg/w3c/dom/NodeList;
    .end local v9           #doc:Lorg/w3c/dom/Element;
    .end local v11           #ele:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #node:Lorg/w3c/dom/Node;
    :catchall_0
    move-exception v21

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v21

    .line 329
    .restart local v3       #N:I
    .restart local v6       #configName:Ljava/lang/String;
    .restart local v7       #configValue:Ljava/lang/String;
    .restart local v8       #configs:Lorg/w3c/dom/NodeList;
    .restart local v9       #doc:Lorg/w3c/dom/Element;
    .restart local v11       #ele:Lorg/w3c/dom/Element;
    .restart local v12       #i:I
    .restart local v15       #name:Ljava/lang/String;
    .restart local v16       #node:Lorg/w3c/dom/Node;
    :cond_5
    :try_start_4
    const-string v21, "ComposeThemeIcon"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 330
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->isComposeThemeIcon:Z

    goto/16 :goto_2

    .line 331
    :cond_6
    const-string v21, "BaseScale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 332
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->baseScale:F

    goto/16 :goto_2

    .line 335
    .end local v6           #configName:Ljava/lang/String;
    .end local v7           #configValue:Ljava/lang/String;
    :cond_7
    const-string v21, "PointsMapping"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 336
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v18, pointsMappingFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v19, pointsMappingTo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 339
    .local v17, points:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, j:I
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, M:I
    :goto_3
    if-ge v14, v2, :cond_9

    .line 340
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 341
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 342
    move-object/from16 v0, v16

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v11, v0

    .line 343
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    .line 344
    const-string v21, "Point"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 345
    const-string v21, "fromX"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v21, "fromY"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v21, "toX"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v21, "toY"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 356
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingTo:[F

    .line 357
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v14, v21, -0x1

    :goto_4
    if-ltz v14, :cond_a

    .line 358
    iget-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingTo:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    aput v21, v22, v14

    .line 357
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 360
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    .line 361
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v14, v21, -0x1

    :goto_5
    if-ltz v14, :cond_1

    .line 362
    iget-object v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    aput v21, v22, v14

    .line 361
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 364
    .end local v2           #M:I
    .end local v14           #j:I
    .end local v17           #points:Lorg/w3c/dom/NodeList;
    .end local v18           #pointsMappingFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v19           #pointsMappingTo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_b
    const-string v21, "ScaleX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 365
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->scaleX:F

    goto/16 :goto_2

    .line 366
    :cond_c
    const-string v21, "ScaleY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 367
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->scaleY:F

    goto/16 :goto_2

    .line 368
    :cond_d
    const-string v21, "ScaleX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 369
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->scaleX:F

    goto/16 :goto_2

    .line 370
    :cond_e
    const-string v21, "SkewX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 371
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->skewX:F

    goto/16 :goto_2

    .line 372
    :cond_f
    const-string v21, "SkewY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 373
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->skewY:F

    goto/16 :goto_2

    .line 374
    :cond_10
    const-string v21, "TransX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 375
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->transX:F

    goto/16 :goto_2

    .line 377
    :cond_11
    const-string v21, "TransY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 378
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->transY:F

    goto/16 :goto_2

    .line 380
    :cond_12
    const-string v21, "RotateX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 381
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->rotateX:F

    goto/16 :goto_2

    .line 382
    :cond_13
    const-string v21, "RotateY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 383
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->rotateY:F

    goto/16 :goto_2

    .line 384
    :cond_14
    const-string v21, "RotateZ"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 385
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->rotateZ:F

    goto/16 :goto_2

    .line 386
    :cond_15
    const-string v21, "CameraX"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 387
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->cameraX:F

    goto/16 :goto_2

    .line 389
    :cond_16
    const-string v21, "CameraY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 390
    const-string v21, "value"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Llewa/content/res/IconCustomizer;->hdpiSizeToCurrent(F)F

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Llewa/content/res/IconCustomizer$IconConfig;->cameraY:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 399
    .end local v3           #N:I
    .end local v8           #configs:Lorg/w3c/dom/NodeList;
    .end local v11           #ele:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #node:Lorg/w3c/dom/Node;
    :cond_17
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0
.end method

.method private static loadIconFilters(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 15
    .parameter "configs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List",
            "<",
            "Llewa/graphics/IBitmapFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Llewa/graphics/IBitmapFilter;>;"
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v6, v0, :cond_3

    .line 407
    invoke-interface {p0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 408
    invoke-interface {p0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 409
    .local v2, ele:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 410
    .local v9, name:Ljava/lang/String;
    const-string v13, "Filter"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 411
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 412
    .local v4, filterChildren:Lorg/w3c/dom/NodeList;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v12, paramEntrys:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .local v7, j:I
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .local v1, O:I
    :goto_1
    if-ge v7, v1, :cond_1

    .line 414
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 415
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 416
    .local v11, paramEle:Lorg/w3c/dom/Element;
    const-string v13, "Param"

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 417
    new-instance v10, Ljava/util/AbstractMap$SimpleEntry;

    const-string v13, "name"

    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "value"

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    .local v10, param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v10           #param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #paramEle:Lorg/w3c/dom/Element;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 424
    :cond_1
    const-string v13, "name"

    invoke-interface {v2, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, filterName:Ljava/lang/String;
    invoke-static {v5, v12}, Llewa/graphics/IBitmapFilter$Factory;->create(Ljava/lang/String;Ljava/util/List;)Llewa/graphics/IBitmapFilter;

    move-result-object v3

    .line 426
    .local v3, filter:Llewa/graphics/IBitmapFilter;
    if-eqz v3, :cond_2

    .line 427
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v1           #O:I
    .end local v2           #ele:Lorg/w3c/dom/Element;
    .end local v3           #filter:Llewa/graphics/IBitmapFilter;
    .end local v4           #filterChildren:Lorg/w3c/dom/NodeList;
    .end local v5           #filterName:Ljava/lang/String;
    .end local v7           #j:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #paramEntrys:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 432
    :cond_3
    return-object v8
.end method

.method private static makeIconMatrix()Landroid/graphics/Matrix;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x4000

    .line 1164
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1165
    .local v0, matrix:Landroid/graphics/Matrix;
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    if-eqz v1, :cond_0

    .line 1166
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    sget-object v3, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v3, v3, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingTo:[F

    sget-object v4, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget-object v4, v4, Llewa/content/res/IconCustomizer$IconConfig;->pointsMappingFrom:[F

    array-length v4, v4

    div-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 1181
    :goto_0
    return-object v0

    .line 1169
    :cond_0
    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    .line 1170
    .local v6, camera:Landroid/graphics/Camera;
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->rotateX:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 1171
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->rotateY:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1172
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->rotateZ:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 1173
    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1174
    sget v1, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Llewa/content/res/IconCustomizer$IconConfig;->cameraX:F

    sub-float/2addr v1, v2

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Llewa/content/res/IconCustomizer$IconConfig;->cameraY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1176
    sget v1, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Llewa/content/res/IconCustomizer$IconConfig;->cameraX:F

    add-float/2addr v1, v2

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Llewa/content/res/IconCustomizer$IconConfig;->cameraY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1178
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->scaleX:F

    sget-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Llewa/content/res/IconCustomizer$IconConfig;->scaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1179
    sget-object v1, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Llewa/content/res/IconCustomizer$IconConfig;->skewX:F

    sget-object v2, Llewa/content/res/IconCustomizer;->sIconConfig:Llewa/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Llewa/content/res/IconCustomizer$IconConfig;->skewY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto :goto_0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1123
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llewa/content/res/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Llewa/content/res/IconCustomizer$CustomizedIconsListener;)V

    .line 1124
    return-void
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Llewa/content/res/IconCustomizer$CustomizedIconsListener;)V
    .locals 12
    .parameter "context"
    .parameter "l"

    .prologue
    .line 1127
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1128
    .local v5, launcherIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1130
    .local v8, pm:Landroid/content/pm/PackageManager;
    sget-boolean v9, Llewa/os/Process;->IS_SYSTEM:Z

    .line 1131
    .local v9, processIcon:Z
    const/4 v10, 0x0

    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1132
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    .line 1133
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {p1, v10}, Llewa/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    .line 1135
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1136
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1137
    .local v4, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v4, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1138
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_1

    .line 1139
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1140
    .local v7, packageName:Ljava/lang/String;
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1141
    .local v1, className:Ljava/lang/String;
    invoke-static {v7, v1}, Llewa/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1142
    invoke-static {p0, v7, v1, v3}, Llewa/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1145
    .end local v1           #className:Ljava/lang/String;
    .end local v7           #packageName:Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 1146
    invoke-interface {p1, v2}, Llewa/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    .line 1135
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1149
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #info:Landroid/content/pm/ActivityInfo;
    :cond_3
    if-eqz p1, :cond_4

    .line 1150
    invoke-interface {p1}, Llewa/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    .line 1152
    :cond_4
    return-void
.end method

.method private static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 6
    .parameter "fileName"
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 760
    const/4 v0, 0x0

    .line 762
    .local v0, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Llewa/os/Process;->IS_SYSTEM:Z

    if-eqz v3, :cond_1

    const-string v3, "/cache/"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Llewa/content/res/IconCustomizer;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_0

    .line 766
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 767
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 768
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Llewa/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, target:Ljava/lang/String;
    invoke-static {v1, v2}, Llewa/os/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 771
    const/16 v3, 0x1a4

    invoke-static {v2, v3}, Llewa/os/Shell;->chmod(Ljava/lang/String;I)Z

    .line 772
    invoke-static {v1}, Llewa/os/Shell;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 777
    .end local v2           #target:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 779
    .end local v1           #path:Ljava/lang/String;
    :goto_1
    return-void

    .line 762
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 774
    :catch_0
    move-exception v3

    .line 777
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 775
    :catch_1
    move-exception v3

    .line 777
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"
    .parameter "dr"
    .parameter "context"

    .prologue
    .line 783
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 784
    invoke-static {p0, p1}, Llewa/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p3}, Llewa/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 787
    :cond_0
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "icon"

    .prologue
    .line 957
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    if-eq v1, v2, :cond_1

    .line 959
    :cond_0
    sget v1, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 961
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v1, Llewa/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 964
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private static scaleDensity(I)I
    .locals 4
    .parameter "densityDpi"

    .prologue
    .line 175
    sparse-switch p0, :sswitch_data_0

    .line 186
    const-wide/high16 v0, 0x3ff8

    int-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    return v0

    .line 177
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 179
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    .line 181
    :sswitch_2
    const/16 v0, 0x140

    goto :goto_0

    .line 184
    :sswitch_3
    const/16 v0, 0x1e0

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_3
    .end sparse-switch
.end method

.method private static scalePixel(I)I
    .locals 4
    .parameter "px"

    .prologue
    .line 209
    sget v0, Llewa/content/res/IconCustomizer;->sDensity:I

    .line 210
    .local v0, density:I
    mul-int v2, p0, v0

    div-int/lit16 v1, v2, 0xf0

    .line 212
    .local v1, i:I
    rem-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    int-to-float v2, v2

    sget v3, Llewa/content/res/IconCustomizer;->mIconScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 898
    sput-object p0, Llewa/content/res/IconCustomizer;->sContext:Landroid/content/Context;

    .line 899
    invoke-static {}, Llewa/content/res/IconCustomizer;->checkModIcons()V

    .line 900
    return-void
.end method

.method public static setIconScale(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/4 v3, 0x0

    .line 192
    sput p0, Llewa/content/res/IconCustomizer;->mRawIconScale:F

    .line 193
    sget v0, Llewa/content/res/IconCustomizer;->sDensity:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    sget v0, Llewa/content/res/IconCustomizer;->sScreenWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_2

    .line 194
    const v0, 0x3f638e39

    mul-float/2addr p0, v0

    .line 200
    :cond_0
    :goto_0
    sget v0, Llewa/content/res/IconCustomizer;->mIconScale:F

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_1

    .line 201
    sput p0, Llewa/content/res/IconCustomizer;->mIconScale:F

    .line 202
    const/16 v0, 0x60

    invoke-static {v0}, Llewa/content/res/IconCustomizer;->scalePixel(I)I

    move-result v0

    sput v0, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sput v0, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Llewa/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v2, Llewa/content/res/IconCustomizer;->sCustomizedIconHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Llewa/content/res/IconCustomizer;->sCustomizedIconRect:Landroid/graphics/Rect;

    .line 205
    :cond_1
    return-void

    .line 196
    :cond_2
    sget v0, Llewa/content/res/IconCustomizer;->sDensity:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_0

    sget v0, Llewa/content/res/IconCustomizer;->sScreenWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_0

    .line 197
    const/high16 v0, 0x4434

    sget v1, Llewa/content/res/IconCustomizer;->sScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    sput v0, Llewa/content/res/IconCustomizer;->mRawIconScale:F

    goto :goto_0
.end method

.method private static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "base"
    .parameter "matrix"

    .prologue
    .line 498
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 500
    .local v0, outBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 501
    sget-object v1, Llewa/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 502
    sget-object v1, Llewa/content/res/IconCustomizer;->sCanvasForTransformBitmap:Landroid/graphics/Canvas;

    sget-object v2, Llewa/content/res/IconCustomizer;->sPaintForBitmap:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 503
    return-object v0
.end method
