.class public Lcom/tencent/tccsync/LoginUtil;
.super Ljava/lang/Object;


# instance fields
.field private cppInstance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/tencent/tccsync/SoTool;->getLIB_Name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/LibraryLoadUtil;->loadLibrary(Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/tencent/tccsync/LoginUtil;->newLoginUtilInstance()I

    move-result v0

    iput v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    iget v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private native clear(I)V
.end method

.method private native deleteLoginUtilObject(I)V
.end method

.method private native getKey(I)Ljava/lang/String;
.end method

.method private native getPostBody(I)[B
.end method

.method private native getPostUrl(I)Ljava/lang/String;
.end method

.method private native getVerifyImageUrl(I)Ljava/lang/String;
.end method

.method private native makeLoginRequestPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method private native makeLoginRequestPackageMd5(ILjava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native makeQQPhoneAndroidFeekBackUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
.end method

.method public static native makeQQPimFeekBackUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
.end method

.method public static native makeQQPimSecureAndroidFeekBackUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
.end method

.method private native newLoginUtilInstance()I
.end method

.method private native solveLoginResponPackge(I[BI)I
.end method

.method private throwIfError(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lcom/tencent/tccsync/LoginUtilException;

    invoke-direct {v0, p1}, Lcom/tencent/tccsync/LoginUtilException;-><init>(I)V

    throw v0

    :sswitch_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/LoginUtil;->clear(I)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/LoginUtil;->deleteLoginUtilObject(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/LoginUtil;->getKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/LoginUtil;->getPostBody(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPostUrl()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/LoginUtil;->getPostUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyImageUrl()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/LoginUtil;->getVerifyImageUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeLoginRequestPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12

    iget v1, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/tencent/tccsync/LoginUtil;->makeLoginRequestPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/LoginUtil;->throwIfError(I)V

    return-void
.end method

.method public makeLoginRequestPackageMd5(Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12

    iget v1, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/tencent/tccsync/LoginUtil;->makeLoginRequestPackageMd5(ILjava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/tccsync/LoginUtil;->throwIfError(I)V

    return-void
.end method

.method public solveLoginResponPackge([BI)I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/LoginUtil;->cppInstance:I

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/tccsync/LoginUtil;->solveLoginResponPackge(I[BI)I

    move-result v0

    return v0
.end method

.method public native testIntFromCarson()I
.end method

.method public native testStringFromCarson()Ljava/lang/String;
.end method
