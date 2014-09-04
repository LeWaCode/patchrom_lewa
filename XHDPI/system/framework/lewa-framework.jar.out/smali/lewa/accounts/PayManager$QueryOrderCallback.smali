.class Llewa/accounts/PayManager$QueryOrderCallback;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Lcom/qihoopp/framework/HttpLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/accounts/PayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryOrderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/accounts/PayManager;


# direct methods
.method constructor <init>(Llewa/accounts/PayManager;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Llewa/accounts/PayManager$QueryOrderCallback;->this$0:Llewa/accounts/PayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILorg/json/JSONObject;)V
    .locals 9
    .parameter "stateCode"
    .parameter "json"

    .prologue
    const/4 v8, 0x1

    .line 155
    new-instance v4, Llewa/accounts/QueryOrderResult;

    invoke-direct {v4}, Llewa/accounts/QueryOrderResult;-><init>()V

    .line 156
    .local v4, result:Llewa/accounts/QueryOrderResult;
    if-ne p1, v8, :cond_5

    .line 157
    const/4 v6, 0x6

    iput v6, v4, Llewa/accounts/QueryOrderResult;->result_code:I

    .line 158
    if-eqz p2, :cond_4

    .line 159
    const/4 v5, 0x0

    .line 161
    .local v5, resultCode:Ljava/lang/String;
    :try_start_0
    const-string v6, "result_code"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    const-string v6, "result_msg"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Llewa/accounts/QueryOrderResult;->result_msg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    if-eqz v5, :cond_3

    const-string v6, "0000"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    :try_start_1
    const-string v6, "record"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 169
    .local v3, record:Lorg/json/JSONObject;
    invoke-static {v3}, Llewa/accounts/PayRecord;->parserJson(Lorg/json/JSONObject;)Llewa/accounts/PayRecord;

    move-result-object v6

    iput-object v6, v4, Llewa/accounts/QueryOrderResult;->record:Llewa/accounts/PayRecord;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .end local v3           #record:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    iget-object v6, v4, Llewa/accounts/QueryOrderResult;->record:Llewa/accounts/PayRecord;

    if-eqz v6, :cond_1

    .line 177
    const/4 v6, 0x5

    iput v6, v4, Llewa/accounts/QueryOrderResult;->result_code:I

    .line 185
    .end local v5           #resultCode:Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v6, p0, Llewa/accounts/PayManager$QueryOrderCallback;->this$0:Llewa/accounts/PayManager;

    iget-object v6, v6, Llewa/accounts/PayManager;->mQueryInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/accounts/PayManager$QueryInfo;

    .line 186
    .local v2, info:Llewa/accounts/PayManager$QueryInfo;
    iget-object v6, v2, Llewa/accounts/PayManager$QueryInfo;->callback:Llewa/accounts/PayManager$QueryOrderCallback;

    if-ne v6, p0, :cond_2

    .line 187
    iget-object v6, p0, Llewa/accounts/PayManager$QueryOrderCallback;->this$0:Llewa/accounts/PayManager;

    iget-object v6, v6, Llewa/accounts/PayManager;->mQueryInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    iget-object v6, v2, Llewa/accounts/PayManager$QueryInfo;->listener:Llewa/accounts/PayManager$QueryResultListener;

    invoke-interface {v6, v4}, Llewa/accounts/PayManager$QueryResultListener;->onResult(Llewa/accounts/QueryOrderResult;)V

    goto :goto_3

    .line 163
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Llewa/accounts/PayManager$QueryInfo;
    .restart local v5       #resultCode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Llewa/accounts/PayManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JSONException"

    invoke-static {v6, v7, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 171
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-static {}, Llewa/accounts/PayManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JSONException"

    invoke-static {v6, v7, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 173
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    if-eqz v5, :cond_0

    const-string v6, "0001"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    const/4 v6, 0x4

    iput v6, v4, Llewa/accounts/QueryOrderResult;->result_code:I

    goto :goto_1

    .line 180
    .end local v5           #resultCode:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Llewa/accounts/PayManager$QueryOrderCallback;->this$0:Llewa/accounts/PayManager;

    #getter for: Llewa/accounts/PayManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Llewa/accounts/PayManager;->access$100(Llewa/accounts/PayManager;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u67e5\u8be2\u5931\u8d25"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 183
    :cond_5
    iget-object v6, p0, Llewa/accounts/PayManager$QueryOrderCallback;->this$0:Llewa/accounts/PayManager;

    #calls: Llewa/accounts/PayManager;->processErrorCode(ILlewa/accounts/QueryOrderResult;)V
    invoke-static {v6, p1, v4}, Llewa/accounts/PayManager;->access$200(Llewa/accounts/PayManager;ILlewa/accounts/QueryOrderResult;)V

    goto :goto_2

    .line 191
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    return-void
.end method
