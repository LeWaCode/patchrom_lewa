.class public Llewa/util/PlatformHelper;
.super Ljava/lang/Object;
.source "PlatformHelper.java"


# static fields
.field private static final CONFIG_IS_MTK:Z

.field private static final CONFIG_IS_QCOM:Z

.field private static final CONFIG_IS_SPRD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Llewa/util/PlatformHelper;->isMtk()Z

    move-result v0

    sput-boolean v0, Llewa/util/PlatformHelper;->CONFIG_IS_MTK:Z

    .line 8
    invoke-static {}, Llewa/util/PlatformHelper;->isQcom()Z

    move-result v0

    sput-boolean v0, Llewa/util/PlatformHelper;->CONFIG_IS_QCOM:Z

    .line 9
    invoke-static {}, Llewa/util/PlatformHelper;->isSprd()Z

    move-result v0

    sput-boolean v0, Llewa/util/PlatformHelper;->CONFIG_IS_SPRD:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Llewa/util/PlatformHelper;->CONFIG_IS_MTK:Z

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "mtk"

    .line 21
    :goto_0
    return-object v0

    .line 16
    :cond_0
    sget-boolean v0, Llewa/util/PlatformHelper;->CONFIG_IS_QCOM:Z

    if-eqz v0, :cond_1

    .line 17
    const-string v0, "qcom"

    goto :goto_0

    .line 18
    :cond_1
    sget-boolean v0, Llewa/util/PlatformHelper;->CONFIG_IS_SPRD:Z

    if-eqz v0, :cond_2

    .line 19
    const-string v0, "sprd"

    goto :goto_0

    .line 21
    :cond_2
    const-string v0, "aosp"

    goto :goto_0
.end method

.method public static isAosp()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Llewa/util/PlatformHelper;->CONFIG_IS_MTK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Llewa/util/PlatformHelper;->CONFIG_IS_QCOM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Llewa/util/PlatformHelper;->CONFIG_IS_SPRD:Z

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMtk()Z
    .locals 1

    .prologue
    .line 27
    :try_start_0
    const-string v0, "com.android.internal.telephony.gemini.GeminiPhone"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQcom()Z
    .locals 1

    .prologue
    .line 36
    :try_start_0
    const-string v0, "org.codeaurora.Performance"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    .line 38
    :catch_0
    move-exception v0

    .line 40
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSprd()Z
    .locals 1

    .prologue
    .line 45
    :try_start_0
    const-string v0, "com.android.internal.telephony.SprdRIL"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method
