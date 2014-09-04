.class public Lcom/lewa/server/IconManagerService;
.super Llewa/util/IIconManager$Stub;
.source "IconManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/server/IconManagerService$IconScaleObserver;
    }
.end annotation


# static fields
.field private static final SETTINGS_APP_ICON_SACLE:Ljava/lang/String; = "app_icon_scale"

.field private static final TAG:Ljava/lang/String; = "IconManagerService"

.field private static mIconScale:F


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/high16 v0, 0x3f80

    sput v0, Lcom/lewa/server/IconManagerService;->mIconScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Llewa/util/IIconManager$Stub;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lewa/server/IconManagerService;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Llewa/content/res/IconCustomizer;->checkSystemUi()V

    .line 32
    invoke-static {}, Llewa/content/res/IconCustomizer;->checkModIcons()V

    .line 33
    invoke-direct {p0, p1}, Lcom/lewa/server/IconManagerService;->registerIconScaleSetting(Landroid/content/Context;)V

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/lewa/server/IconManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_icon_scale"

    const/high16 v4, 0x3f80

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 37
    .local v1, iconScale:F
    sput v1, Lcom/lewa/server/IconManagerService;->mIconScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1           #iconScale:F
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lewa/server/IconManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lewa/server/IconManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()F
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/lewa/server/IconManagerService;->mIconScale:F

    return v0
.end method

.method static synthetic access$102(F)F
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    sput p0, Lcom/lewa/server/IconManagerService;->mIconScale:F

    return p0
.end method

.method private registerIconScaleSetting(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/lewa/server/IconManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_icon_scale"

    const/high16 v4, 0x3f80

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 71
    .local v0, iconScale:F
    invoke-static {v0}, Llewa/content/res/IconCustomizer;->setIconScale(F)V

    .line 72
    new-instance v1, Lcom/lewa/server/IconManagerService$IconScaleObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/lewa/server/IconManagerService$IconScaleObserver;-><init>(Lcom/lewa/server/IconManagerService;Landroid/os/Handler;)V

    .line 73
    .local v1, observer:Lcom/lewa/server/IconManagerService$IconScaleObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_icon_scale"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    return-void
.end method


# virtual methods
.method public checkModIcons()V
    .locals 0

    .prologue
    .line 101
    invoke-static {}, Llewa/content/res/IconCustomizer;->checkModIcons()V

    .line 102
    return-void
.end method

.method public clearCustomizedIcons(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 91
    invoke-static {p1}, Llewa/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 106
    invoke-static {p1, p2}, Llewa/content/res/IconCustomizer;->getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadIconByApplcationInfo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "ai"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/lewa/server/IconManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Llewa/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 86
    .local v0, d:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public loadIconByResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "ri"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/lewa/server/IconManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Llewa/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 80
    .local v0, d:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 96
    invoke-static {}, Llewa/content/res/ThemeResources;->reset()V

    .line 97
    return-void
.end method
