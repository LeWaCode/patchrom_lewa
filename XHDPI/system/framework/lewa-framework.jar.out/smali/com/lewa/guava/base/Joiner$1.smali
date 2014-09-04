.class Lcom/lewa/guava/base/Joiner$1;
.super Lcom/lewa/guava/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/base/Joiner;

.field final synthetic val$nullText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lewa/guava/base/Joiner;Lcom/lewa/guava/base/Joiner;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lewa/guava/base/Joiner$1;->this$0:Lcom/lewa/guava/base/Joiner;

    iput-object p3, p0, Lcom/lewa/guava/base/Joiner$1;->val$nullText:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/lewa/guava/base/Joiner;-><init>(Lcom/lewa/guava/base/Joiner;Lcom/lewa/guava/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method public skipNulls()Lcom/lewa/guava/base/Joiner;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "part"

    .prologue
    .line 218
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/base/Joiner$1;->val$nullText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/base/Joiner$1;->this$0:Lcom/lewa/guava/base/Joiner;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public useForNull(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;
    .locals 2
    .parameter "nullText"

    .prologue
    .line 221
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
