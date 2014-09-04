.class Lcom/lewa/bi/common/api/ApiServiceClient$2;
.super Ljava/lang/Object;
.source "ApiServiceClient.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/bi/common/api/ApiServiceClient;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/bi/common/api/ApiServiceClient;


# direct methods
.method constructor <init>(Lcom/lewa/bi/common/api/ApiServiceClient;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiServiceClient$2;->this$0:Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 122
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 123
    .local v1, ceheader:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 125
    .local v3, codecs:[Lorg/apache/http/HeaderElement;
    move-object v0, v3

    .local v0, arr$:[Lorg/apache/http/HeaderElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 126
    .local v2, codec:Lorg/apache/http/HeaderElement;
    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gzip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    new-instance v7, Lcom/lewa/bi/common/api/ApiServiceClient$GzipDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/lewa/bi/common/api/ApiServiceClient$GzipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 132
    .end local v0           #arr$:[Lorg/apache/http/HeaderElement;
    .end local v2           #codec:Lorg/apache/http/HeaderElement;
    .end local v3           #codecs:[Lorg/apache/http/HeaderElement;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    return-void

    .line 125
    .restart local v0       #arr$:[Lorg/apache/http/HeaderElement;
    .restart local v2       #codec:Lorg/apache/http/HeaderElement;
    .restart local v3       #codecs:[Lorg/apache/http/HeaderElement;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
