.class public Lcom/tencent/qqpim/sdk/defines/ClassDefiner;
.super Ljava/lang/Object;


# static fields
.field private static final E_CLASS_NAMES_DAO:[Ljava/lang/String; = null

.field private static final E_CLASS_NAMES_LOGIN:[Ljava/lang/String; = null

.field private static final E_CLASS_NAMES_NETADAPTER:[Ljava/lang/String; = null

.field private static final E_CLASS_NAMES_SYNC:[Ljava/lang/String; = null

.field private static final E_CLASS_NAMES_VCARD:[Ljava/lang/String; = null

.field private static final PackageName:Ljava/lang/String; = "com.tencent.qqpim"

.field private static final TAG:Ljava/lang/String; = "ClassDefiner"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.qqpim.sdk.apps.account.qq.QQLoginModel"

    aput-object v1, v0, v2

    const-string v1, "com.tencent.qqpim.sdk.apps.account.mobile.MobileLoginModel"

    aput-object v1, v0, v3

    const-string v1, "com.tencent.qqpim.sdk.apps.account.thirdparty.ThirdPartyLoginModel"

    aput-object v1, v0, v4

    const-string v1, "com.tencent.qqpim.sdk.apps.account.thirdparty.VKeyLoginModel"

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_LOGIN:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.tencent.qqpim.sdk.sync.datasync.dhw.DhwSyncProcessor"

    aput-object v1, v0, v2

    const-string v1, "com.tencent.qqpim.sdk.sync.datasync.tcc.TccSyncProcessor"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_SYNC:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.tencent.qqpim.sdk.sync.contact.SYSContactDao"

    aput-object v1, v0, v2

    const-string v1, "com.tencent.qqpim.sdk.sync.sms.SYSSmsDao"

    aput-object v1, v0, v3

    const-string v1, "com.tencent.qqpim.sdk.sync.calllog.SYSCallLogDao"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_DAO:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.tencent.qqpim.sdk.defines.VCard4Contact"

    aput-object v1, v0, v2

    const-string v1, "com.tencent.qqpim.sdk.defines.VCard4SMS"

    aput-object v1, v0, v3

    const-string v1, "com.tencent.qqpim.sdk.defines.VCard4CallLog"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_VCARD:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.tencent.qqpim.sdk.libs.netengine.DhwNetAdapter"

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_NETADAPTER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDaoClassName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_DAO:[Ljava/lang/String;

    aget-object v0, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ClassDefiner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDaoClassName()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLoginClassName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_LOGIN:[Ljava/lang/String;

    aget-object v0, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ClassDefiner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLoginClassName()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNetAdapterClassName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_NETADAPTER:[Ljava/lang/String;

    aget-object v0, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ClassDefiner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNetAdapterClassName()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSyncClassName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_SYNC:[Ljava/lang/String;

    aget-object v0, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ClassDefiner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSyncClassName()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVCardClassName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->E_CLASS_NAMES_VCARD:[Ljava/lang/String;

    aget-object v0, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ClassDefiner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVCardClassName()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
