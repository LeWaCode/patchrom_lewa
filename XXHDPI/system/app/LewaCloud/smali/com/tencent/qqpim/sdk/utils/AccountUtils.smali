.class public Lcom/tencent/qqpim/sdk/utils/AccountUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ACCOUNT_TYPE_EMAIL:I = 0x3

.field public static final ACCOUNT_TYPE_MOBILE:I = 0x2

.field public static final ACCOUNT_TYPE_QQ:I = 0x1

.field public static final ACCOUNT_TYPE_THIRDPARTY:I = 0x4

.field public static final ACCOUNT_TYPE_UNKNOW:I = -0x1

.field public static final ACCOUNT_TYPE_VKEY:I = 0x5

.field public static final RESULT_CANCELED_LOGIN:I = 0x65

.field public static final RESULT_MUSTUPDATE_CANCELED:I = 0x67

.field public static final RESULT_NEEDUPDATE:I = 0x66

.field public static final RESULT_OK_LOGIN:I = 0x64

.field public static final RESULT_UNKONW:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isPwdValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isPwdValidWeek(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isQQAccountValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static saveLastLoginImsi(Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getImsi()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->o:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {p0, v1, v0}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)V

    return-void
.end method

.method public static final saveLastLoginedType(I)V
    .locals 2

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->l:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v0, v1, p0}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    return-void
.end method
