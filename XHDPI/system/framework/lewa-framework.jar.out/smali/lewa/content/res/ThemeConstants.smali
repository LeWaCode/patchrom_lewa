.class public Llewa/content/res/ThemeConstants;
.super Ljava/lang/Object;
.source "ThemeConstants.java"


# static fields
.field public static final CONFIG_EXTRA_PATH:Ljava/lang/String; = "/data/system/face/lockscreen.config"

.field public static final CONFIG_FANCYWALLPAPER_CUSTOM_PATH:Ljava/lang/String; = "/data/system/face/fancywallpaper"

.field public static final CONFIG_FANCYWALLPAPER_DEFAULT_PATH:Ljava/lang/String; = "/system/media/theme/fancywallpaper"

.field public static final CONFIG_FANCYWALLPAPER_NAME:Ljava/lang/String; = "fancywallpaper"

.field public static final CONFIG_FANCYWALLPAPER_STANDALONE_PATH:Ljava/lang/String; = null

.field public static final CONFIG_ICONS_CUSTOM_PATH:Ljava/lang/String; = "/data/system/face/icons"

.field public static final CONFIG_ICONS_DEFAULT_PATH:Ljava/lang/String; = "/system/media/theme/icons"

.field public static final CONFIG_ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final CONFIG_ICONS_STANDALONE_PATH:Ljava/lang/String; = null

.field public static final CONFIG_ICON_RES_SUBFOLDER:Ljava/lang/String; = "res/"

.field public static final CONFIG_LOCKSTYLE_CUSTOM_PATH:Ljava/lang/String; = "/data/system/face/lockstyle"

.field public static final CONFIG_LOCKSTYLE_DEFAULT_PATH:Ljava/lang/String; = "/system/media/theme/lockstyle"

.field public static final CONFIG_LOCKSTYLE_NAME:Ljava/lang/String; = "lockstyle"

.field public static final CONFIG_LOCKSTYLE_STANDALONE_PATH:Ljava/lang/String; = null

.field public static final CONFIG_LOCKSTYLE_SUBFOLDER:Ljava/lang/String; = "advance/"

.field public static final CONFIG_LOCKWALLPAPER_CUSTOM_PATH:Ljava/lang/String; = "/data/system/face/lockwallpaper"

.field public static final CONFIG_LOCKWALLPAPER_DEFAULT_PATH:Ljava/lang/String; = "/system/media/theme/lockwallpaper"

.field public static final CONFIG_LOCKWALLPAPER_NAME:Ljava/lang/String; = "lockwallpaper"

.field public static final CONFIG_LOCKWALLPAPER_STANDALONE_PATH:Ljava/lang/String; = null

.field public static final CONFIG_THEME_CUSTOM_PATH:Ljava/lang/String; = "/data/system/face/"

.field public static final CONFIG_THEME_DEFAULT_PATH:Ljava/lang/String; = "/system/media/theme/"

.field public static final CONFIG_THEME_STANDALONE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Llewa/os/Process;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/content/res/ThemeConstants;->CONFIG_THEME_STANDALONE_PATH:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llewa/content/res/ThemeConstants;->CONFIG_THEME_STANDALONE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockstyle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/content/res/ThemeConstants;->CONFIG_LOCKSTYLE_STANDALONE_PATH:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llewa/content/res/ThemeConstants;->CONFIG_THEME_STANDALONE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fancywallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/content/res/ThemeConstants;->CONFIG_FANCYWALLPAPER_STANDALONE_PATH:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llewa/content/res/ThemeConstants;->CONFIG_THEME_STANDALONE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockwallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/content/res/ThemeConstants;->CONFIG_LOCKWALLPAPER_STANDALONE_PATH:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llewa/content/res/ThemeConstants;->CONFIG_THEME_STANDALONE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/content/res/ThemeConstants;->CONFIG_ICONS_STANDALONE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
