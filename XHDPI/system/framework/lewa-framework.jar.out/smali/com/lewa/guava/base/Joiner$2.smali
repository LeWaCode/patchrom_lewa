.class Lcom/lewa/guava/base/Joiner$2;
.super Lcom/lewa/guava/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/base/Joiner;->skipNulls()Lcom/lewa/guava/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/base/Joiner;


# direct methods
.method constructor <init>(Lcom/lewa/guava/base/Joiner;Lcom/lewa/guava/base/Joiner;)V
    .locals 1
    .parameter
    .parameter "x0"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/lewa/guava/base/Joiner$2;->this$0:Lcom/lewa/guava/base/Joiner;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/lewa/guava/base/Joiner;-><init>(Lcom/lewa/guava/base/Joiner;Lcom/lewa/guava/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/Iterable",
            "<*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    .local p1, appendable:Ljava/lang/Appendable;,"TA;"
    .local p2, parts:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const-string v2, "appendable"

    invoke-static {p1, v2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "parts"

    invoke-static {p2, v2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 242
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 244
    .local v1, part:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 245
    iget-object v2, p0, Lcom/lewa/guava/base/Joiner$2;->this$0:Lcom/lewa/guava/base/Joiner;

    invoke-virtual {v2, v1}, Lcom/lewa/guava/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 249
    .end local v1           #part:Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 251
    .restart local v1       #part:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 252
    iget-object v2, p0, Lcom/lewa/guava/base/Joiner$2;->this$0:Lcom/lewa/guava/base/Joiner;

    #getter for: Lcom/lewa/guava/base/Joiner;->separator:Ljava/lang/String;
    invoke-static {v2}, Lcom/lewa/guava/base/Joiner;->access$100(Lcom/lewa/guava/base/Joiner;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 253
    iget-object v2, p0, Lcom/lewa/guava/base/Joiner$2;->this$0:Lcom/lewa/guava/base/Joiner;

    invoke-virtual {v2, v1}, Lcom/lewa/guava/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 256
    .end local v1           #part:Ljava/lang/Object;
    :cond_2
    return-object p1
.end method

.method public useForNull(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;
    .locals 2
    .parameter "nullText"

    .prologue
    .line 259
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified skipNulls"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner$MapJoiner;
    .locals 2
    .parameter "kvs"

    .prologue
    .line 263
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t use .skipNulls() with maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
