.class public Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;
.super Ljava/lang/Object;


# instance fields
.field private accType:I

.field private language:S

.field private lcString:Ljava/lang/String;

.field private loginKey:Ljava/lang/String;

.field private loginedAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->loginedAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->loginKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->lcString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->language:S

    return-void
.end method


# virtual methods
.method public getAccType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->accType:I

    return v0
.end method

.method public getLanguageID()S
    .locals 1

    iget-short v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->language:S

    return v0
.end method

.method public getLcString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->lcString:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->loginKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginedAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->loginedAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setAccType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->accType:I

    return-void
.end method

.method public setLanguage(S)V
    .locals 0

    iput-short p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->language:S

    return-void
.end method

.method public setLcString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->lcString:Ljava/lang/String;

    return-void
.end method

.method public setLoginKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->loginKey:Ljava/lang/String;

    return-void
.end method

.method public setLoginedAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->loginedAccount:Ljava/lang/String;

    return-void
.end method
