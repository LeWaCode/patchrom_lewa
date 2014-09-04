.class public Llewa/laml/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"


# static fields
.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static mRendererCoreCache:Llewa/laml/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    sput v0, Llewa/laml/util/AppIconsHelper;->mThemeChanged:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    const-string v1, "sys.lewa.themeChanged"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, version:I
    sget v1, Llewa/laml/util/AppIconsHelper;->mThemeChanged:I

    if-le v0, v1, :cond_0

    .line 37
    invoke-static {}, Llewa/laml/util/AppIconsHelper;->clearCache()V

    .line 38
    sput v0, Llewa/laml/util/AppIconsHelper;->mThemeChanged:I

    .line 40
    :cond_0
    return-void
.end method

.method public static cleanUp()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Llewa/laml/RenderThread;->globalThreadStop()V

    .line 44
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Llewa/laml/util/AppIconsHelper;->mRendererCoreCache:Llewa/laml/util/RendererCoreCache;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Llewa/laml/util/AppIconsHelper;->mRendererCoreCache:Llewa/laml/util/RendererCoreCache;

    invoke-virtual {v0}, Llewa/laml/util/RendererCoreCache;->clear()V

    .line 49
    :cond_0
    return-void
.end method

.method private static ensureContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .parameter "context"

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 122
    :try_start_0
    const-class v1, Landroid/app/Application;

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-object p0

    .line 123
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"

    .prologue
    .line 57
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 58
    .local v2, packageName:Ljava/lang/String;
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 59
    .local v0, activityName:Ljava/lang/String;
    invoke-static {p0, v2, v0, p3, p4}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 60
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"

    .prologue
    .line 69
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 70
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    invoke-static {p0, v0, p2, p3, p4}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 69
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "cacheTime"

    .prologue
    .line 82
    invoke-static {p0}, Llewa/laml/util/AppIconsHelper;->ensureContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, p1, p2, p3, v0}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "name"
    .parameter "cacheTime"
    .parameter "h"

    .prologue
    const/4 v9, 0x0

    .line 102
    sget-object v0, Llewa/laml/util/AppIconsHelper;->mRendererCoreCache:Llewa/laml/util/RendererCoreCache;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Llewa/laml/util/RendererCoreCache;

    invoke-direct {v0, p4}, Llewa/laml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object v0, Llewa/laml/util/AppIconsHelper;->mRendererCoreCache:Llewa/laml/util/RendererCoreCache;

    .line 105
    :cond_0
    :try_start_0
    sget-boolean v0, Llewa/os/Process;->IS_SYSTEM:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-static {p0}, Llewa/laml/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    .line 107
    :cond_1
    sget-object v0, Llewa/laml/util/AppIconsHelper;->mRendererCoreCache:Llewa/laml/util/RendererCoreCache;

    invoke-virtual {v0, p1, p2, p3}, Llewa/laml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v8

    .line 108
    .local v8, ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v8, :cond_2

    iget-object v0, v8, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->r:Llewa/laml/RendererCore;

    if-nez v0, :cond_3

    .line 109
    :cond_2
    sget-object v0, Llewa/laml/util/AppIconsHelper;->mRendererCoreCache:Llewa/laml/util/RendererCoreCache;

    new-instance v5, Llewa/laml/util/FancyIconResourceLoader;

    invoke-direct {v5, p1}, Llewa/laml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p0

    move-wide v3, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Llewa/laml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLlewa/laml/ResourceLoader;Landroid/os/Handler;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v8

    .line 112
    :cond_3
    iget-object v0, v8, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->r:Llewa/laml/RendererCore;

    if-nez v0, :cond_4

    move-object v0, v9

    .line 116
    .end local v8           #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :goto_0
    return-object v0

    .line 112
    .restart local v8       #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :cond_4
    new-instance v0, Llewa/laml/FancyDrawable;

    iget-object v1, v8, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->r:Llewa/laml/RendererCore;

    invoke-direct {v0, v1}, Llewa/laml/FancyDrawable;-><init>(Llewa/laml/RendererCore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v8           #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :catch_0
    move-exception v7

    .line 114
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "LAML AppIconsHelper"

    const-string v1, "getIconDrawable"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 116
    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "cacheTime"

    .prologue
    .line 88
    invoke-static {p0}, Llewa/laml/util/AppIconsHelper;->ensureContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 89
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "cacheTime"
    .parameter "h"

    .prologue
    .line 95
    invoke-static {p1, p2}, Llewa/content/res/IconCustomizer;->getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, fancyIconRelativePath:Ljava/lang/String;
    invoke-static {p0, v0, p3, p4, p5}, Llewa/laml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method
