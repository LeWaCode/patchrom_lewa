.class Lcom/qq/jce/wup/OldUniAttribute;
.super Ljava/lang/Object;
.source "OldUniAttribute.java"


# instance fields
.field protected _data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field _is:Lcom/qq/taf/jce/JceInputStream;

.field protected cachedClassName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cachedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected encodeName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedClassName:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    .line 32
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    return-void
.end method

.method private checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, listTpye:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 278
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "byte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 280
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "only byte[] is supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 282
    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    .line 283
    const-string v5, "java.util.List"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 318
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string v5, "Array"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_2
    instance-of v5, p2, Ljava/lang/reflect/Array;

    if-eqz v5, :cond_3

    .line 291
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "can not support Array, please use List"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :cond_3
    instance-of v5, p2, Ljava/util/List;

    if-eqz v5, :cond_5

    .line 293
    const-string v5, "java.util.List"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, p2

    .line 294
    check-cast v2, Ljava/util/List;

    .line 295
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 296
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :cond_4
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    .end local v2           #list:Ljava/util/List;
    :cond_5
    instance-of v5, p2, Ljava/util/Map;

    if-eqz v5, :cond_7

    .line 302
    const-string v5, "java.util.Map"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, p2

    .line 303
    check-cast v3, Ljava/util/Map;

    .line 304
    .local v3, map:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 305
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    .local v0, it:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 307
    .local v1, key:Ljava/lang/Object;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 308
    .local v4, value:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-direct {p0, p1, v4}, Lcom/qq/jce/wup/OldUniAttribute;->checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :cond_6
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v3           #map:Ljava/util/Map;
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCacheProxy(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "className"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, proxy:Ljava/lang/Object;
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedClassName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedClassName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-static {p1}, Lcom/qq/jce/wup/BasicClassTypeUtil;->createClassByUni(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedClassName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "o"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method


# virtual methods
.method public clearCacheData()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public decode([B)V
    .locals 6
    .parameter "buffer"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 328
    iget-object v2, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v2, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 329
    iget-object v2, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v3, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 331
    .local v0, _tempdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;[B>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 332
    .local v1, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v2, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v2, v0, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    .line 335
    return-void
.end method

.method public encode()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 322
    .local v0, _os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 324
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 156
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 157
    const/4 v5, 0x0

    .line 176
    :goto_0
    return-object v5

    .line 158
    :cond_0
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 159
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 161
    :cond_1
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 162
    .local v6, pair:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .line 163
    .local v0, className:Ljava/lang/String;
    new-array v1, v9, [B

    .line 164
    .local v1, data:[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #className:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 166
    .restart local v0       #className:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:[B
    check-cast v1, [B

    .line 170
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1       #data:[B
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/qq/jce/wup/OldUniAttribute;->getCacheProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 171
    .local v7, proxy:Ljava/lang/Object;,"TT;"
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v8, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 172
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v9, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 174
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 175
    .local v5, o:Ljava/lang/Object;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v5           #o:Ljava/lang/Object;
    .end local v7           #proxy:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v3

    .line 178
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    new-instance v8, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v8, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 208
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 232
    .end local p2
    :goto_0
    return-object p2

    .line 210
    .restart local p2
    :cond_0
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 211
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 213
    :cond_1
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 214
    .local v6, pair:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v0, ""

    .line 215
    .local v0, className:Ljava/lang/String;
    new-array v1, v9, [B

    .line 216
    .local v1, data:[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 217
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #className:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 218
    .restart local v0       #className:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:[B
    check-cast v1, [B

    .line 222
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1       #data:[B
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/qq/jce/wup/OldUniAttribute;->getCacheProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 223
    .local v7, proxy:Ljava/lang/Object;,"TT;"
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v8, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 224
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v9, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 226
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 227
    .local v5, o:Ljava/lang/Object;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v5

    .line 228
    goto :goto_0

    .line 229
    .end local v5           #o:Ljava/lang/Object;
    .end local v7           #proxy:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v3

    .line 230
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/qq/jce/wup/OldUniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getEncodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getJceStruct(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 118
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 119
    const/4 v5, 0x0

    .line 138
    :goto_0
    return-object v5

    .line 120
    :cond_0
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 121
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 123
    :cond_1
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 124
    .local v6, pair:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .line 125
    .local v0, className:Ljava/lang/String;
    new-array v1, v9, [B

    .line 126
    .local v1, data:[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #className:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 128
    .restart local v0       #className:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:[B
    check-cast v1, [B

    .line 132
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1       #data:[B
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/qq/jce/wup/OldUniAttribute;->getCacheProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 133
    .local v7, proxy:Ljava/lang/Object;,"TT;"
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v8, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 134
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v9, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 136
    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    check-cast v7, Lcom/qq/taf/jce/JceStruct;

    .end local v7           #proxy:Ljava/lang/Object;,"TT;"
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->directRead(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v5

    .line 137
    .local v5, o:Lcom/qq/taf/jce/JceStruct;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/OldUniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v5           #o:Lcom/qq/taf/jce/JceStruct;
    :catch_0
    move-exception v3

    .line 140
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    new-instance v8, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v8, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p2, t:Ljava/lang/Object;,"TT;"
    const/4 v6, 0x1

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "put key can not is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "put value can not is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_1
    instance-of v5, p2, Ljava/util/Set;

    if-eqz v5, :cond_2

    .line 93
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "can not support Set"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_2
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 96
    .local v0, _out:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v5, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 97
    const/4 v5, 0x0

    invoke-virtual {v0, p2, v5}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/Object;I)V

    .line 98
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 99
    .local v1, _sBuffer:[B
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    .local v4, pair:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v3, listType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v3, p2}, Lcom/qq/jce/wup/OldUniAttribute;->checkObjectType(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 102
    invoke-static {v3}, Lcom/qq/jce/wup/BasicClassTypeUtil;->transTypeList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, className:Ljava/lang/String;
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v5, p0, Lcom/qq/jce/wup/OldUniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v5, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 247
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 248
    const/4 v7, 0x0

    .line 262
    :goto_0
    return-object v7

    .line 250
    :cond_0
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 251
    .local v5, pair:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v0, ""

    .line 252
    .local v0, className:Ljava/lang/String;
    new-array v1, v8, [B

    .line 253
    .local v1, data:[B
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 254
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #className:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 255
    .restart local v0       #className:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:[B
    check-cast v1, [B

    .line 259
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1       #data:[B
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/qq/jce/wup/BasicClassTypeUtil;->createClassByUni(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 260
    .local v6, proxy:Ljava/lang/Object;,"TT;"
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v7, v1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 261
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v8, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 262
    iget-object v7, p0, Lcom/qq/jce/wup/OldUniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v6, v8, v9}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 263
    .end local v6           #proxy:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v3

    .line 264
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public setEncodeName(Ljava/lang/String;)V
    .locals 0
    .parameter "encodeName"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qq/jce/wup/OldUniAttribute;->encodeName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qq/jce/wup/OldUniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
