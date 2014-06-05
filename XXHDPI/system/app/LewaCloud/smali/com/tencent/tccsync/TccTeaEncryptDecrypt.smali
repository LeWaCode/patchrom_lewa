.class public Lcom/tencent/tccsync/TccTeaEncryptDecrypt;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TccTeaEncryptDecrypt"

.field private static cryptKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->cryptKey:[B

    invoke-static {}, Lcom/tencent/tccsync/SoTool;->getLIB_Name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/LibraryLoadUtil;->loadLibrary(Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([B)[B
    .locals 1

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt([B[B)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v0, "TccTeaEncryptDecrypt"

    const-string v1, "decrypt(): data == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    const-string v0, "TccTeaEncryptDecrypt"

    const-string v1, "decrypt(): data.length == 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "TccTeaEncryptDecrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decrypt(): data.length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->tccXXTeaDecrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TccTeaEncryptDecrypt"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tccXXTeaDecrypt error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TccTeaEncryptDecrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tccXXTeaDecrypt error data length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static encrypt([B)[B
    .locals 1

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->encrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([B[B)[B
    .locals 5

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->tccXXTeaEncrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TccTeaEncryptDecrypt"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tccXXTeaEncrypt error data length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TccTeaEncryptDecrypt"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tccXXTeaEncrypt error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getKey()[B
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->cryptKey:[B

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getXXTccTeaEncryptDecryptKey()[B

    move-result-object v0

    sput-object v0, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->cryptKey:[B

    :cond_0
    sget-object v0, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->cryptKey:[B

    return-object v0
.end method

.method private static native getXXTccTeaEncryptDecryptKey()[B
.end method

.method private static native tccXXTeaDecrypt([B[B)[B
.end method

.method private static native tccXXTeaEncrypt([B[B)[B
.end method
