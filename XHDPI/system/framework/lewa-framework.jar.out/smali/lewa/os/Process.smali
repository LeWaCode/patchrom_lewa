.class public Llewa/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# static fields
.field private static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.lewa.launcher"

#the value of this static final field might be set in the static constructor
.field public static final IS_SYSTEM:Z = false

.field public static final PACKAGE_NAME:Ljava/lang/String; = null

.field public static final UID_SYSTEM:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Llewa/os/Process;->isSystemProcess()Z

    move-result v0

    sput-boolean v0, Llewa/os/Process;->IS_SYSTEM:Z

    .line 16
    invoke-static {}, Llewa/os/Process;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/os/Process;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, pkg:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 26
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 27
    .local v0, i:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 28
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    .end local v0           #i:I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string v1, "com.lewa.launcher"

    .end local v1           #pkg:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 30
    .restart local v1       #pkg:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static isSystemProcess()Z
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
