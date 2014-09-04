.class public Llewa/accounts/OrderManager;
.super Ljava/lang/Object;
.source "OrderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/accounts/OrderManager$OrderCallback;,
        Llewa/accounts/OrderManager$OrderInfo;,
        Llewa/accounts/OrderManager$OrderResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mOrderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llewa/accounts/OrderManager$OrderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Llewa/accounts/OrderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/accounts/OrderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/accounts/OrderManager;->mOrderInfos:Ljava/util/List;

    .line 26
    iput-object p1, p0, Llewa/accounts/OrderManager;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Llewa/accounts/OrderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Llewa/accounts/OrderManager;ILlewa/accounts/OrderResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Llewa/accounts/OrderManager;->processErrorCode(ILlewa/accounts/OrderResult;)V

    return-void
.end method

.method private processErrorCode(ILlewa/accounts/OrderResult;)V
    .locals 5
    .parameter "stateCode"
    .parameter "result"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 146
    if-ne p1, v3, :cond_1

    .line 147
    iget-object v0, p0, Llewa/accounts/OrderManager;->mContext:Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u4e0b\u8ba2\u5355\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    iput v3, p2, Llewa/accounts/OrderResult;->result_code:I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    if-ne p1, v4, :cond_2

    .line 152
    iget-object v0, p0, Llewa/accounts/OrderManager;->mContext:Landroid/content/Context;

    const-string v1, "\u8d85\u65f6\u8fde\u63a5\uff0c\u4e0b\u8ba2\u5355\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    iput v2, p2, Llewa/accounts/OrderResult;->result_code:I

    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 157
    iget-object v0, p0, Llewa/accounts/OrderManager;->mContext:Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u4e0b\u8ba2\u5355\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    iput v3, p2, Llewa/accounts/OrderResult;->result_code:I

    goto :goto_0

    .line 161
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 162
    iget-object v0, p0, Llewa/accounts/OrderManager;->mContext:Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u4e0b\u8ba2\u5355\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    iput v3, p2, Llewa/accounts/OrderResult;->result_code:I

    goto :goto_0

    .line 166
    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 167
    iget-object v0, p0, Llewa/accounts/OrderManager;->mContext:Landroid/content/Context;

    const-string v1, "\u67e5\u8be2\u8ba2\u5355\u5df2\u7ecf\u53d6\u6d88"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    iput v4, p2, Llewa/accounts/OrderResult;->result_code:I

    goto :goto_0
.end method


# virtual methods
.method public requestCreateOrder(Llewa/accounts/Order;Llewa/accounts/QihooUser;Llewa/accounts/OrderManager$OrderResultListener;)V
    .locals 14
    .parameter "order"
    .parameter "mQihooUser"
    .parameter "listener"

    .prologue
    .line 55
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .local v4, params:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "card_amount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Llewa/accounts/Order;->cardAmount:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "mer_code"

    const-string v1, "20111117360"

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "mer_trade_code"

    iget-object v1, p1, Llewa/accounts/Order;->mMerTradeCode:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "notify_url"

    const-string v1, "https://api.360pay.cn/noReturn/notify"

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "product_name"

    iget-object v1, p1, Llewa/accounts/Order;->mProductName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    if-eqz p2, :cond_0

    .line 63
    const-string v0, "qcookie"

    invoke-virtual/range {p2 .. p2}, Llewa/accounts/QihooUser;->getmQihooQCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "qihoo_id"

    invoke-virtual/range {p2 .. p2}, Llewa/accounts/QihooUser;->getmQihooId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "tcookie"

    invoke-virtual/range {p2 .. p2}, Llewa/accounts/QihooUser;->getmQihooTCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    const-string v0, "rec_amount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Llewa/accounts/Order;->payAmount:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "sign_type"

    const-string v1, "MD5"

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "bus_amount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Llewa/accounts/Order;->busAmount:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v4}, Llewa/accounts/utils/SecSign;->buildSecSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 71
    .local v13, signValue:Ljava/lang/String;
    const-string v0, "sign"

    invoke-virtual {v4, v0, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Llewa/accounts/OrderManager;->stopCreateOrder()V

    .line 73
    new-instance v6, Llewa/accounts/OrderManager$OrderCallback;

    invoke-direct {v6, p0}, Llewa/accounts/OrderManager$OrderCallback;-><init>(Llewa/accounts/OrderManager;)V

    .line 74
    .local v6, callback:Llewa/accounts/OrderManager$OrderCallback;
    new-instance v0, Lcom/qihoopp/framework/HttpCreater;

    invoke-direct {v0}, Lcom/qihoopp/framework/HttpCreater;-><init>()V

    iget-object v1, p0, Llewa/accounts/OrderManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/qihoopp/framework/HttpRequestMode;->POST:Lcom/qihoopp/framework/HttpRequestMode;

    const-string v3, "https://api.360pay.cn/securePay/createOrder"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/qihoopp/framework/HttpCreater;->create(Landroid/content/Context;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/qihoopp/framework/HttpLoaderCallback;)Lcom/qihoopp/framework/HttpLoadThread;

    move-result-object v11

    .line 77
    .local v11, task:Lcom/qihoopp/framework/HttpLoadThread;
    iget-object v0, p0, Llewa/accounts/OrderManager;->mOrderInfos:Ljava/util/List;

    new-instance v7, Llewa/accounts/OrderManager$OrderInfo;

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p3

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Llewa/accounts/OrderManager$OrderInfo;-><init>(Llewa/accounts/OrderManager;Llewa/accounts/Order;Llewa/accounts/OrderManager$OrderResultListener;Lcom/qihoopp/framework/HttpLoadThread;Llewa/accounts/OrderManager$OrderCallback;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v11}, Lcom/qihoopp/framework/HttpLoadThread;->start()V

    .line 79
    return-void
.end method

.method public stopCreateOrder()V
    .locals 3

    .prologue
    .line 47
    iget-object v2, p0, Llewa/accounts/OrderManager;->mOrderInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/accounts/OrderManager$OrderInfo;

    .line 48
    .local v1, info:Llewa/accounts/OrderManager$OrderInfo;
    iget-object v2, v1, Llewa/accounts/OrderManager$OrderInfo;->task:Lcom/qihoopp/framework/HttpLoadThread;

    invoke-virtual {v2}, Lcom/qihoopp/framework/HttpLoadThread;->cancel()V

    goto :goto_0

    .line 50
    .end local v1           #info:Llewa/accounts/OrderManager$OrderInfo;
    :cond_0
    return-void
.end method
