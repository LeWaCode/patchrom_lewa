.class Llewa/laml/data/WebServiceBinder$QueryThread;
.super Ljava/lang/Thread;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/WebServiceBinder;


# direct methods
.method public constructor <init>(Llewa/laml/data/WebServiceBinder;)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Llewa/laml/data/WebServiceBinder$QueryThread;->this$0:Llewa/laml/data/WebServiceBinder;

    .line 255
    const-string v0, "WebServiceBinder QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 256
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 220
    const/4 v10, 0x0

    .line 221
    .local v10, paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :try_start_0
    const-string v17, "WebServiceBinder"

    const-string v18, "QueryThread start"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/data/WebServiceBinder$QueryThread;->this$0:Llewa/laml/data/WebServiceBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Llewa/laml/data/WebServiceBinder;->mUriFormatter:Llewa/laml/util/TextFormatter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/data/WebServiceBinder$QueryThread;->this$0:Llewa/laml/data/WebServiceBinder;

    move-object/from16 v18, v0

    #getter for: Llewa/laml/data/WebServiceBinder;->mContext:Llewa/laml/ScreenContext;
    invoke-static/range {v18 .. v18}, Llewa/laml/data/WebServiceBinder;->access$000(Llewa/laml/data/WebServiceBinder;)Llewa/laml/ScreenContext;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Llewa/laml/util/TextFormatter;->getText(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 223
    .local v16, uri:Landroid/net/Uri;
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 224
    .local v13, request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/data/WebServiceBinder$QueryThread;->this$0:Llewa/laml/data/WebServiceBinder;

    move-object/from16 v17, v0

    #getter for: Llewa/laml/data/WebServiceBinder;->mParamsFormatter:Llewa/laml/util/TextFormatter;
    invoke-static/range {v17 .. v17}, Llewa/laml/data/WebServiceBinder;->access$100(Llewa/laml/data/WebServiceBinder;)Llewa/laml/util/TextFormatter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/data/WebServiceBinder$QueryThread;->this$0:Llewa/laml/data/WebServiceBinder;

    move-object/from16 v18, v0

    #getter for: Llewa/laml/data/WebServiceBinder;->mContext:Llewa/laml/ScreenContext;
    invoke-static/range {v18 .. v18}, Llewa/laml/data/WebServiceBinder;->access$000(Llewa/laml/data/WebServiceBinder;)Llewa/laml/ScreenContext;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Llewa/laml/util/TextFormatter;->getText(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, paramsStr:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 226
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 227
    .end local v10           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .local v11, paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :try_start_1
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, params:[Ljava/lang/String;
    move-object v2, v9

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v2, v5

    .line 229
    .local v7, pa:Ljava/lang/String;
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, param:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 231
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const/16 v18, 0x0

    aget-object v18, v8, v18

    const/16 v19, 0x1

    aget-object v19, v8, v19

    invoke-direct/range {v17 .. v19}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 228
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v7           #pa:Ljava/lang/String;
    .end local v8           #param:[Ljava/lang/String;
    :cond_1
    move-object v10, v11

    .line 234
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v9           #params:[Ljava/lang/String;
    .end local v11           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v10       #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_2
    :try_start_2
    new-instance v17, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 235
    new-instance v17, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 236
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 237
    .local v15, statusCode:I
    const/4 v14, 0x0

    .line 238
    .local v14, result:Ljava/lang/String;
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 239
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v14

    .line 240
    :cond_3
    const-string v17, "WebServiceBinder"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "QueryThread get result: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " \n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/data/WebServiceBinder$QueryThread;->this$0:Llewa/laml/data/WebServiceBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Llewa/laml/data/WebServiceBinder;->onQueryComplete(Ljava/lang/String;)V
    invoke-static {v0, v14}, Llewa/laml/data/WebServiceBinder;->access$200(Llewa/laml/data/WebServiceBinder;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/data/WebServiceBinder$QueryThread;->this$0:Llewa/laml/data/WebServiceBinder;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    #setter for: Llewa/laml/data/WebServiceBinder;->mLastQueryTime:J
    invoke-static/range {v17 .. v19}, Llewa/laml/data/WebServiceBinder;->access$302(Llewa/laml/data/WebServiceBinder;J)J

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/data/WebServiceBinder$QueryThread;->this$0:Llewa/laml/data/WebServiceBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Llewa/laml/data/WebServiceBinder;->mQueryInProgress:Z
    invoke-static/range {v17 .. v18}, Llewa/laml/data/WebServiceBinder;->access$402(Llewa/laml/data/WebServiceBinder;Z)Z

    .line 244
    const-string v17, "WebServiceBinder"

    const-string v18, "QueryThread end"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 252
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #paramsStr:Ljava/lang/String;
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v14           #result:Ljava/lang/String;
    .end local v15           #statusCode:I
    .end local v16           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 245
    :catch_0
    move-exception v3

    .line 246
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    const-string v17, "WebServiceBinder"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fail to run query, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 248
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    const-string v17, "WebServiceBinder"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fail to run query, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v3

    .line 250
    .local v3, e:Ljava/io/IOException;
    :goto_4
    const-string v17, "WebServiceBinder"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fail to run query, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    .end local v3           #e:Ljava/io/IOException;
    .end local v10           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v11       #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v12       #paramsStr:Ljava/lang/String;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v16       #uri:Landroid/net/Uri;
    :catch_3
    move-exception v3

    move-object v10, v11

    .end local v11           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v10       #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    goto :goto_4

    .line 247
    .end local v10           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v11       #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :catch_4
    move-exception v3

    move-object v10, v11

    .end local v11           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v10       #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    goto :goto_3

    .line 245
    .end local v10           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v11       #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :catch_5
    move-exception v3

    move-object v10, v11

    .end local v11           #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v10       #paramsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    goto :goto_2
.end method
