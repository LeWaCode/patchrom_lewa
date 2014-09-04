.class public Lcom/lewa/guava/base/Joiner$MapJoiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapJoiner"
.end annotation


# instance fields
.field private joiner:Lcom/lewa/guava/base/Joiner;

.field private keyValueSeparator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/lewa/guava/base/Joiner;Ljava/lang/String;)V
    .locals 0
    .parameter "joiner"
    .parameter "keyValueSeparator"

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->joiner:Lcom/lewa/guava/base/Joiner;

    .line 288
    iput-object p2, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    .line 289
    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/guava/base/Joiner;Ljava/lang/String;Lcom/lewa/guava/base/Joiner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/base/Joiner$MapJoiner;-><init>(Lcom/lewa/guava/base/Joiner;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Map",
            "<**>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    .local p1, appendable:Ljava/lang/Appendable;,"TA;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 300
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 302
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->joiner:Lcom/lewa/guava/base/Joiner;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lewa/guava/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 303
    iget-object v3, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 304
    iget-object v3, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->joiner:Lcom/lewa/guava/base/Joiner;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lewa/guava/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 305
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->joiner:Lcom/lewa/guava/base/Joiner;

    #getter for: Lcom/lewa/guava/base/Joiner;->separator:Ljava/lang/String;
    invoke-static {v3}, Lcom/lewa/guava/base/Joiner;->access$100(Lcom/lewa/guava/base/Joiner;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 307
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 308
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->joiner:Lcom/lewa/guava/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lewa/guava/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 309
    iget-object v3, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 310
    iget-object v3, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->joiner:Lcom/lewa/guava/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lewa/guava/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 313
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_0
    return-object p1
.end method

.method public appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 324
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/base/Joiner$MapJoiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    return-object p1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, impossible:Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public join(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/lewa/guava/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useForNull(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner$MapJoiner;
    .locals 3
    .parameter "nullText"

    .prologue
    .line 346
    new-instance v0, Lcom/lewa/guava/base/Joiner$MapJoiner;

    iget-object v1, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->joiner:Lcom/lewa/guava/base/Joiner;

    invoke-virtual {v1, p1}, Lcom/lewa/guava/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/base/Joiner$MapJoiner;-><init>(Lcom/lewa/guava/base/Joiner;Ljava/lang/String;)V

    return-object v0
.end method
