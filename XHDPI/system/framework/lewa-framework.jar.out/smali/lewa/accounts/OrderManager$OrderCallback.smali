.class Llewa/accounts/OrderManager$OrderCallback;
.super Ljava/lang/Object;
.source "OrderManager.java"

# interfaces
.implements Lcom/qihoopp/framework/HttpLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/accounts/OrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/accounts/OrderManager;


# direct methods
.method constructor <init>(Llewa/accounts/OrderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Llewa/accounts/OrderManager$OrderCallback;->this$0:Llewa/accounts/OrderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILorg/json/JSONObject;)V
    .locals 15
    .parameter "stateCode"
    .parameter "json"

    .prologue
    .line 83
    new-instance v9, Llewa/accounts/OrderResult;

    invoke-direct {v9}, Llewa/accounts/OrderResult;-><init>()V

    .line 84
    .local v9, result:Llewa/accounts/OrderResult;
    const/4 v12, 0x6

    iput v12, v9, Llewa/accounts/OrderResult;->result_code:I

    .line 85
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 86
    if-eqz p2, :cond_5

    .line 87
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v7, paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 89
    .local v10, resultCode:Ljava/lang/String;
    new-instance v6, Llewa/accounts/OrderRecord;

    invoke-direct {v6}, Llewa/accounts/OrderRecord;-><init>()V

    .line 91
    .local v6, order_record:Llewa/accounts/OrderRecord;
    :try_start_0
    const-string v12, "result_code"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    const-string v12, "result_msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Llewa/accounts/OrderResult;->result_msg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :goto_0
    if-eqz v10, :cond_2

    const-string v12, "0000"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 99
    :try_start_1
    const-string v12, "record"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 101
    .local v8, record:Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 102
    .local v5, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 103
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, value:Ljava/lang/String;
    invoke-virtual {v7, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v12, "seckey"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 107
    iput-object v11, v6, Llewa/accounts/OrderRecord;->mSeckey:Ljava/lang/String;

    .line 109
    :cond_1
    const-string v12, "token"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 110
    iput-object v11, v6, Llewa/accounts/OrderRecord;->mToken:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 113
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8           #record:Lorg/json/JSONObject;
    .end local v11           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Lorg/json/JSONException;
    invoke-static {}, Llewa/accounts/OrderManager;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "JSONException"

    invoke-static {v12, v13, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    iget-object v12, v6, Llewa/accounts/OrderRecord;->mSeckey:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, v6, Llewa/accounts/OrderRecord;->mToken:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 118
    invoke-static {v7}, Llewa/accounts/utils/SecSign;->vertifyOrderSign(Ljava/util/HashMap;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 119
    const/4 v12, 0x5

    iput v12, v9, Llewa/accounts/OrderResult;->result_code:I

    .line 120
    iput-object v6, v9, Llewa/accounts/OrderResult;->record:Llewa/accounts/OrderRecord;

    .line 131
    .end local v6           #order_record:Llewa/accounts/OrderRecord;
    .end local v7           #paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #resultCode:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v12, p0, Llewa/accounts/OrderManager$OrderCallback;->this$0:Llewa/accounts/OrderManager;

    iget-object v12, v12, Llewa/accounts/OrderManager;->mOrderInfos:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/accounts/OrderManager$OrderInfo;

    .line 132
    .local v3, info:Llewa/accounts/OrderManager$OrderInfo;
    iget-object v12, v3, Llewa/accounts/OrderManager$OrderInfo;->callback:Llewa/accounts/OrderManager$OrderCallback;

    if-ne v12, p0, :cond_4

    .line 133
    iget-object v12, p0, Llewa/accounts/OrderManager$OrderCallback;->this$0:Llewa/accounts/OrderManager;

    iget-object v12, v12, Llewa/accounts/OrderManager;->mOrderInfos:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v12, v3, Llewa/accounts/OrderManager$OrderInfo;->listener:Llewa/accounts/OrderManager$OrderResultListener;

    invoke-interface {v12, v9}, Llewa/accounts/OrderManager$OrderResultListener;->onResult(Llewa/accounts/OrderResult;)V

    goto :goto_3

    .line 93
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Llewa/accounts/OrderManager$OrderInfo;
    .restart local v6       #order_record:Llewa/accounts/OrderRecord;
    .restart local v7       #paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #resultCode:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 94
    .restart local v1       #e:Lorg/json/JSONException;
    invoke-static {}, Llewa/accounts/OrderManager;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "JSONException"

    invoke-static {v12, v13, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 124
    .end local v1           #e:Lorg/json/JSONException;
    .end local v6           #order_record:Llewa/accounts/OrderRecord;
    .end local v7           #paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #resultCode:Ljava/lang/String;
    :cond_5
    iget-object v12, p0, Llewa/accounts/OrderManager$OrderCallback;->this$0:Llewa/accounts/OrderManager;

    iget-object v12, v12, Llewa/accounts/OrderManager;->mContext:Landroid/content/Context;

    const-string v13, "\u4e0b\u8ba2\u5355\u5931\u8d25"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 128
    :cond_6
    iget-object v12, p0, Llewa/accounts/OrderManager$OrderCallback;->this$0:Llewa/accounts/OrderManager;

    move/from16 v0, p1

    #calls: Llewa/accounts/OrderManager;->processErrorCode(ILlewa/accounts/OrderResult;)V
    invoke-static {v12, v0, v9}, Llewa/accounts/OrderManager;->access$100(Llewa/accounts/OrderManager;ILlewa/accounts/OrderResult;)V

    goto :goto_2

    .line 137
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_7
    return-void
.end method
