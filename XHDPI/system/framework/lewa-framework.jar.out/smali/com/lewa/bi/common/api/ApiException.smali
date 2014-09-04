.class public Lcom/lewa/bi/common/api/ApiException;
.super Ljava/lang/RuntimeException;
.source "ApiException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/bi/common/api/ApiException$ApiError;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final apiError:Lcom/lewa/bi/common/api/ApiException$ApiError;


# direct methods
.method public constructor <init>(Lcom/lewa/bi/common/api/ApiException$ApiError;)V
    .locals 0
    .parameter "apiError"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiException;->apiError:Lcom/lewa/bi/common/api/ApiException$ApiError;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/api/ReasonCode;)V
    .locals 2
    .parameter "reasonCode"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 51
    new-instance v0, Lcom/lewa/bi/common/api/ApiException$ApiError;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lewa/bi/common/api/ApiException$ApiError;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiException;->apiError:Lcom/lewa/bi/common/api/ApiException$ApiError;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V
    .locals 1
    .parameter "reasonCode"
    .parameter "reason"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 55
    new-instance v0, Lcom/lewa/bi/common/api/ApiException$ApiError;

    invoke-direct {v0, p1, p2}, Lcom/lewa/bi/common/api/ApiException$ApiError;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiException;->apiError:Lcom/lewa/bi/common/api/ApiException$ApiError;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    new-instance v0, Lcom/lewa/bi/common/api/ApiException$ApiError;

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->UNKNOWN:Lcom/lewa/bi/common/api/ReasonCode;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ApiException$ApiError;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiException;->apiError:Lcom/lewa/bi/common/api/ApiException$ApiError;

    .line 48
    return-void
.end method


# virtual methods
.method public getApiError()Lcom/lewa/bi/common/api/ApiException$ApiError;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiException;->apiError:Lcom/lewa/bi/common/api/ApiException$ApiError;

    return-object v0
.end method

.method public getReasonCode()Lcom/lewa/bi/common/api/ReasonCode;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiException;->apiError:Lcom/lewa/bi/common/api/ApiException$ApiError;

    #getter for: Lcom/lewa/bi/common/api/ApiException$ApiError;->reasonCode:Lcom/lewa/bi/common/api/ReasonCode;
    invoke-static {v0}, Lcom/lewa/bi/common/api/ApiException$ApiError;->access$000(Lcom/lewa/bi/common/api/ApiException$ApiError;)Lcom/lewa/bi/common/api/ReasonCode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API error. code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiException;->apiError:Lcom/lewa/bi/common/api/ApiException$ApiError;

    #getter for: Lcom/lewa/bi/common/api/ApiException$ApiError;->reasonCode:Lcom/lewa/bi/common/api/ReasonCode;
    invoke-static {v1}, Lcom/lewa/bi/common/api/ApiException$ApiError;->access$000(Lcom/lewa/bi/common/api/ApiException$ApiError;)Lcom/lewa/bi/common/api/ReasonCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiException;->apiError:Lcom/lewa/bi/common/api/ApiException$ApiError;

    #getter for: Lcom/lewa/bi/common/api/ApiException$ApiError;->reason:Ljava/lang/String;
    invoke-static {v1}, Lcom/lewa/bi/common/api/ApiException$ApiError;->access$100(Lcom/lewa/bi/common/api/ApiException$ApiError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
