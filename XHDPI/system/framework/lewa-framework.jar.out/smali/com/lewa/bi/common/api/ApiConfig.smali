.class public Lcom/lewa/bi/common/api/ApiConfig;
.super Ljava/lang/Object;
.source "ApiConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/bi/common/api/ApiConfig$1;,
        Lcom/lewa/bi/common/api/ApiConfig$Builder;
    }
.end annotation


# instance fields
.field public final httpUrl:Ljava/lang/String;

.field public final httpsUrl:Ljava/lang/String;

.field public final timeout:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "httpUrl"
    .parameter "httpsUrl"
    .parameter "timeout"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiConfig;->httpUrl:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/lewa/bi/common/api/ApiConfig;->httpsUrl:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/lewa/bi/common/api/ApiConfig;->timeout:I

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/lewa/bi/common/api/ApiConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/lewa/bi/common/api/ApiConfig;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/lewa/bi/common/api/ApiConfig$Builder;

    invoke-direct {v0}, Lcom/lewa/bi/common/api/ApiConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiConfig;->httpUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiConfig;->httpsUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/bi/common/api/ApiConfig;->httpsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_0
    iget v1, p0, Lcom/lewa/bi/common/api/ApiConfig;->timeout:I

    if-lez v1, :cond_1

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/bi/common/api/ApiConfig;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
