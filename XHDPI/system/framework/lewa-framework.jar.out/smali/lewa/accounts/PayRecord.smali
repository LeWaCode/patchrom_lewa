.class public Llewa/accounts/PayRecord;
.super Ljava/lang/Object;
.source "PayRecord.java"


# static fields
.field public static final QUERY_PAY_FAILED:I = 0x3

.field public static final QUERY_PAY_SUCCESS:I = 0x1

.field public static final QUERY_PAY_UNKOWN:I = 0x4

.field public static final QUERY_PAY_WAITING:I = 0x2


# instance fields
.field public bank_code:Ljava/lang/String;

.field public bank_trade_code:Ljava/lang/String;

.field public inner_trade_code:Ljava/lang/String;

.field public mer_code:Ljava/lang/String;

.field public mer_order_time:Ljava/lang/String;

.field public mer_trade_code:Ljava/lang/String;

.field public pay_amount:Ljava/lang/String;

.field public pay_ret_time:Ljava/lang/String;

.field public product_name:Ljava/lang/String;

.field public rec_amount:Ljava/lang/String;

.field public trans_status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parserJson(Lorg/json/JSONObject;)Llewa/accounts/PayRecord;
    .locals 8
    .parameter "record"

    .prologue
    .line 43
    new-instance v4, Llewa/accounts/PayRecord;

    invoke-direct {v4}, Llewa/accounts/PayRecord;-><init>()V

    .line 44
    .local v4, pay_record:Llewa/accounts/PayRecord;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v3, paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 48
    .local v5, transStatus:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 49
    .local v2, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v7, "trans_status"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 55
    move-object v5, v6

    .line 57
    :cond_1
    const-string v7, "mer_trade_code"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 58
    iput-object v6, v4, Llewa/accounts/PayRecord;->mer_trade_code:Ljava/lang/String;

    .line 60
    :cond_2
    const-string v7, "rec_amount"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 61
    iput-object v6, v4, Llewa/accounts/PayRecord;->rec_amount:Ljava/lang/String;

    .line 63
    :cond_3
    const-string v7, "product_name"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 64
    iput-object v6, v4, Llewa/accounts/PayRecord;->product_name:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Lorg/json/JSONException;
    const/4 v7, 0x0

    .line 87
    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    return-object v7

    .line 70
    .restart local v2       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 71
    invoke-static {v3}, Llewa/accounts/utils/SecSign;->vertifyOrderSign(Ljava/util/HashMap;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 72
    const/4 v4, 0x0

    :goto_2
    move-object v7, v4

    .line 87
    goto :goto_1

    .line 74
    :cond_5
    const-string v7, "S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 75
    const/4 v7, 0x1

    iput v7, v4, Llewa/accounts/PayRecord;->trans_status:I

    goto :goto_2

    .line 76
    :cond_6
    const-string v7, "F"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 77
    const/4 v7, 0x3

    iput v7, v4, Llewa/accounts/PayRecord;->trans_status:I

    goto :goto_2

    .line 78
    :cond_7
    const-string v7, "W"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 79
    const/4 v7, 0x2

    iput v7, v4, Llewa/accounts/PayRecord;->trans_status:I

    goto :goto_2

    .line 81
    :cond_8
    const/4 v7, 0x4

    iput v7, v4, Llewa/accounts/PayRecord;->trans_status:I

    goto :goto_2

    .line 85
    :cond_9
    const/4 v4, 0x0

    goto :goto_2
.end method
