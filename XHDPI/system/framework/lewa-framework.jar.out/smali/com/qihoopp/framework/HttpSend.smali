.class public Lcom/qihoopp/framework/HttpSend;
.super Ljava/lang/Object;
.source "HttpSend.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpSend"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private GetMD5Sign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    .local v3, infoIds:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v5, Lcom/qihoopp/framework/HttpSend$1;

    invoke-direct {v5, p0}, Lcom/qihoopp/framework/HttpSend$1;-><init>(Lcom/qihoopp/framework/HttpSend;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 213
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 217
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qihoopp/framework/MD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, str:Ljava/lang/String;
    const-string v5, "HttpSend"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MD5Sign="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-object v4
.end method


# virtual methods
.method public isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 185
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 186
    .local v2, mgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 187
    .local v1, info:[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 189
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 190
    const/4 v3, 0x1

    .line 194
    .end local v0           #i:I
    :goto_1
    return v3

    .line 188
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0           #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lcom/qihoopp/framework/FormFile;)Z
    .locals 2
    .parameter "path"
    .parameter
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qihoopp/framework/FormFile;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qihoopp/framework/FormFile;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/qihoopp/framework/HttpSend;->post(Ljava/lang/String;Ljava/util/Map;[Lcom/qihoopp/framework/FormFile;)Z

    move-result v0

    return v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;[Lcom/qihoopp/framework/FormFile;)Z
    .locals 34
    .parameter "path"
    .parameter
    .parameter "files"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/qihoopp/framework/FormFile;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 50
    .local v22, result:Z
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, BOUNDARY:Ljava/lang/String;
    const-string v8, "--"

    .local v8, PREFIX:Ljava/lang/String;
    const-string v6, "\r\n"

    .line 52
    .local v6, LINEND:Ljava/lang/String;
    const-string v7, "multipart/form-data"

    .line 53
    .local v7, MULTIPART_FROM_DATA:Ljava/lang/String;
    const-string v5, "UTF-8"

    .line 55
    .local v5, CHARSET:Ljava/lang/String;
    new-instance v29, Ljava/net/URL;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    .local v29, uri:Ljava/net/URL;
    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    .line 57
    .local v12, conn:Ljava/net/HttpURLConnection;
    const/16 v30, 0x1388

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 58
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 59
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 60
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 61
    const-string v30, "POST"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 62
    const-string v30, "connection"

    const-string v31, "keep-alive"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v30, "Charsert"

    const-string v31, "UTF-8"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v30, "Content-Type"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ";boundary="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v15, 0x0

    .line 67
    .local v15, files_length:I
    if-eqz p3, :cond_1

    .line 68
    move-object/from16 v9, p3

    .local v9, arr$:[Lcom/qihoopp/framework/FormFile;
    array-length v0, v9

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v28, v9, v16

    .line 69
    .local v28, uploadFile:Lcom/qihoopp/framework/FormFile;
    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 70
    const-string v30, "HttpSend"

    const-string v31, "post, getInStream != null."

    invoke-static/range {v30 .. v31}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    int-to-long v0, v15

    move-wide/from16 v30, v0

    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getFile()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->length()J

    move-result-wide v32

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v15, v0

    .line 68
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const-string v30, "HttpSend"

    const-string v31, "post, getInStream == null."

    invoke-static/range {v30 .. v31}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getData()[B

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int v15, v15, v30

    goto :goto_1

    .line 80
    .end local v9           #arr$:[Lcom/qihoopp/framework/FormFile;
    .end local v16           #i$:I
    .end local v19           #len$:I
    .end local v28           #uploadFile:Lcom/qihoopp/framework/FormFile;
    :cond_1
    const/16 v23, 0x0

    .line 81
    .local v23, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    .line 83
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v26, send_params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v30, "token"

    const-string v31, "token="

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 86
    .local v27, ts:Ljava/lang/String;
    const-string v30, "ts"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v31, "sign"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "seckey="

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/qihoopp/framework/HttpSend;->GetMD5Sign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v23, Ljava/lang/StringBuilder;

    .end local v23           #sb:Ljava/lang/StringBuilder;
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .restart local v23       #sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 91
    .local v14, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Type: text/plain; charset="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Transfer-Encoding: 8bit"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 104
    .end local v14           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v26           #send_params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #ts:Ljava/lang/String;
    :cond_2
    new-instance v20, Ljava/io/DataOutputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .local v20, outStream:Ljava/io/DataOutputStream;
    if-eqz p2, :cond_3

    .line 107
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 110
    :cond_3
    if-eqz p3, :cond_9

    .line 111
    move-object/from16 v9, p3

    .restart local v9       #arr$:[Lcom/qihoopp/framework/FormFile;
    array-length v0, v9

    move/from16 v19, v0

    .restart local v19       #len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    aget-object v28, v9, v16

    .line 112
    .restart local v28       #uploadFile:Lcom/qihoopp/framework/FormFile;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v24, sb1:Ljava/lang/StringBuilder;
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getFileSendName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\"; filename=\""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getFileSendName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Content-Type: application/octet-stream; charset="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 124
    const-string v30, "HttpSend"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "uploadFile, file name is : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getFileSendName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v30

    if-eqz v30, :cond_5

    .line 126
    const/16 v30, 0x400

    move/from16 v0, v30

    new-array v10, v0, [B

    .line 127
    .local v10, buffer:[B
    const/16 v18, 0x0

    .line 128
    .local v18, len:I
    :goto_4
    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x400

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v10, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    const/16 v30, -0x1

    move/from16 v0, v18

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    .line 129
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_4

    .line 134
    :cond_4
    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getInStream()Ljava/io/InputStream;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->close()V

    .line 138
    .end local v10           #buffer:[B
    .end local v18           #len:I
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 111
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 136
    :cond_5
    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getData()[B

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v28 .. v28}, Lcom/qihoopp/framework/FormFile;->getData()[B

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_5

    .line 142
    .end local v24           #sb1:Ljava/lang/StringBuilder;
    .end local v28           #uploadFile:Lcom/qihoopp/framework/FormFile;
    :cond_6
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 143
    .local v13, end_data:[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->write([B)V

    .line 144
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->flush()V

    .line 146
    const/16 v17, 0x0

    .line 147
    .local v17, in:Ljava/io/InputStream;
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    .line 148
    .local v21, res:I
    const/16 v30, 0xc8

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 149
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 151
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v25, sb2:Ljava/lang/StringBuilder;
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v11

    .local v11, ch:I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v11, v0, :cond_7

    .line 153
    int-to-char v0, v11

    move/from16 v30, v0

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 155
    :cond_7
    const-string v30, "HttpSend"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "post, result is : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v31, "succ"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 157
    const/16 v22, 0x1

    .line 162
    .end local v11           #ch:I
    .end local v25           #sb2:Ljava/lang/StringBuilder;
    :cond_8
    :goto_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V

    .line 163
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    .end local v9           #arr$:[Lcom/qihoopp/framework/FormFile;
    .end local v13           #end_data:[B
    .end local v16           #i$:I
    .end local v17           #in:Ljava/io/InputStream;
    .end local v19           #len$:I
    .end local v21           #res:I
    :cond_9
    return v22

    .line 160
    .restart local v9       #arr$:[Lcom/qihoopp/framework/FormFile;
    .restart local v13       #end_data:[B
    .restart local v16       #i$:I
    .restart local v17       #in:Ljava/io/InputStream;
    .restart local v19       #len$:I
    .restart local v21       #res:I
    :cond_a
    const-string v30, "HttpSend"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "post, failed, code is : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method
