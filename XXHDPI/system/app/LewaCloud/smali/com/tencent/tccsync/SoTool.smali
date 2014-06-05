.class public Lcom/tencent/tccsync/SoTool;
.super Ljava/lang/Object;


# static fields
.field private static soName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Synclewa"

    sput-object v0, Lcom/tencent/tccsync/SoTool;->soName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLIB_Name()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/SoTool;->soName:Ljava/lang/String;

    return-object v0
.end method

.method public static setLIB_NAME(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/tccsync/SoTool;->soName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tencent/qqpim/sdk/utils/LibraryLoadUtil;->loadLibrary(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
