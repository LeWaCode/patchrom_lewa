.class public Lcom/lewa/bi/common/api/ApiConfig$Builder;
.super Ljava/lang/Object;
.source "ApiConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/bi/common/api/ApiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private httpUrl:Ljava/lang/String;

.field private httpsUrl:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/lewa/bi/common/api/ApiConfig;
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiConfig$Builder;->httpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "http url is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    new-instance v0, Lcom/lewa/bi/common/api/ApiConfig;

    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiConfig$Builder;->httpUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/lewa/bi/common/api/ApiConfig$Builder;->httpsUrl:Ljava/lang/String;

    iget v3, p0, Lcom/lewa/bi/common/api/ApiConfig$Builder;->timeout:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lewa/bi/common/api/ApiConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/lewa/bi/common/api/ApiConfig$1;)V

    return-object v0
.end method

.method public setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;
    .locals 3
    .parameter "httpUrl"

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http url invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiConfig$Builder;->httpUrl:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public setHttpsUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;
    .locals 3
    .parameter "httpsUrl"

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https url invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiConfig$Builder;->httpsUrl:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setTimeout(I)Lcom/lewa/bi/common/api/ApiConfig$Builder;
    .locals 0
    .parameter "timeout"

    .prologue
    .line 60
    iput p1, p0, Lcom/lewa/bi/common/api/ApiConfig$Builder;->timeout:I

    .line 61
    return-object p0
.end method
