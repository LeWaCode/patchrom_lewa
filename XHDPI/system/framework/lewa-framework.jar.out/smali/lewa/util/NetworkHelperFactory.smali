.class public Llewa/util/NetworkHelperFactory;
.super Ljava/lang/Object;
.source "NetworkHelperFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/util/NetworkHelperFactory$Jb2NetworkHelper;,
        Llewa/util/NetworkHelperFactory$JbNetworkHelper;,
        Llewa/util/NetworkHelperFactory$IcsNetworkHelper;,
        Llewa/util/NetworkHelperFactory$NetworkHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Llewa/util/NetworkHelperFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/util/NetworkHelperFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    return-void
.end method

.method public static getNetworkHelper(Landroid/content/Context;)Llewa/util/NetworkHelperFactory$NetworkHelper;
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 46
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

    .line 40
    :pswitch_0
    new-instance v0, Llewa/util/NetworkHelperFactory$IcsNetworkHelper;

    invoke-direct {v0, p0}, Llewa/util/NetworkHelperFactory$IcsNetworkHelper;-><init>(Landroid/content/Context;)V

    .line 44
    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    new-instance v0, Llewa/util/NetworkHelperFactory$JbNetworkHelper;

    invoke-direct {v0, p0}, Llewa/util/NetworkHelperFactory$JbNetworkHelper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 44
    :pswitch_2
    new-instance v0, Llewa/util/NetworkHelperFactory$Jb2NetworkHelper;

    invoke-direct {v0, p0}, Llewa/util/NetworkHelperFactory$Jb2NetworkHelper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
