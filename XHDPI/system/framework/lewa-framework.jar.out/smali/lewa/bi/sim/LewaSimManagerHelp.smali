.class public Llewa/bi/sim/LewaSimManagerHelp;
.super Ljava/lang/Object;
.source "LewaSimManagerHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/bi/sim/LewaSimManagerHelp$SimManager;,
        Llewa/bi/sim/LewaSimManagerHelp$SimInfo;,
        Llewa/bi/sim/LewaSimManagerHelp$SimComparator;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CONFIG_IS_CODE_AURORA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CONFIG_IS_GEMINI:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CONFIG_IS_SPRD:Z = false

.field private static final TAG:Ljava/lang/String; = "LewaSimManagerHelp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Llewa/bi/sim/LewaSimManagerHelp;->isGemini()Z

    move-result v0

    sput-boolean v0, Llewa/bi/sim/LewaSimManagerHelp;->CONFIG_IS_GEMINI:Z

    .line 15
    invoke-static {}, Llewa/bi/sim/LewaSimManagerHelp;->isCodeAurora()Z

    move-result v0

    sput-boolean v0, Llewa/bi/sim/LewaSimManagerHelp;->CONFIG_IS_CODE_AURORA:Z

    .line 16
    invoke-static {}, Llewa/bi/sim/LewaSimManagerHelp;->isSprd()Z

    move-result v0

    sput-boolean v0, Llewa/bi/sim/LewaSimManagerHelp;->CONFIG_IS_SPRD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static getSimManager(Landroid/content/Context;)Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    sget-boolean v0, Llewa/bi/sim/LewaSimManagerHelp;->CONFIG_IS_CODE_AURORA:Z

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Llewa/bi/sim/CodeAroraSimManager;

    invoke-direct {v0, p0}, Llewa/bi/sim/CodeAroraSimManager;-><init>(Landroid/content/Context;)V

    .line 27
    :goto_0
    return-object v0

    .line 22
    :cond_0
    sget-boolean v0, Llewa/bi/sim/LewaSimManagerHelp;->CONFIG_IS_SPRD:Z

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Llewa/bi/sim/SprdSimManager;

    invoke-direct {v0, p0}, Llewa/bi/sim/SprdSimManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 24
    :cond_1
    sget-boolean v0, Llewa/bi/sim/LewaSimManagerHelp;->CONFIG_IS_GEMINI:Z

    if-eqz v0, :cond_2

    .line 25
    new-instance v0, Llewa/bi/sim/MediaTekSimManager;

    invoke-direct {v0, p0}, Llewa/bi/sim/MediaTekSimManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Llewa/bi/sim/GeneralSimManager;

    invoke-direct {v0, p0}, Llewa/bi/sim/GeneralSimManager;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static isCodeAurora()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 53
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 55
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "android.telephony.MSimTelephonyManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isGemini()Z
    .locals 3

    .prologue
    .line 33
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 44
    :pswitch_0
    new-instance v0, Ljava/lang/UnknownError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 39
    :pswitch_1
    const-string v0, "com.android.internal.telephony.gemini.GeminiPhone"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isSprd()Z
    .locals 2

    .prologue
    .line 64
    :try_start_0
    const-string v1, "com.android.internal.telephony.SprdRIL"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const/4 v1, 0x1

    .line 67
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 66
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 67
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
