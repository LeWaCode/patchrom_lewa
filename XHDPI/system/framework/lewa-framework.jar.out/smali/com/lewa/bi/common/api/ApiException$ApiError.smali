.class public Lcom/lewa/bi/common/api/ApiException$ApiError;
.super Ljava/lang/Object;
.source "ApiException.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/bi/common/api/ApiException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private reason:Ljava/lang/String;

.field private reasonCode:Lcom/lewa/bi/common/api/ReasonCode;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V
    .locals 0
    .parameter "reasonCode"
    .parameter "reason"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiException$ApiError;->reasonCode:Lcom/lewa/bi/common/api/ReasonCode;

    .line 25
    iput-object p2, p0, Lcom/lewa/bi/common/api/ApiException$ApiError;->reason:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/bi/common/api/ApiException$ApiError;)Lcom/lewa/bi/common/api/ReasonCode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiException$ApiError;->reasonCode:Lcom/lewa/bi/common/api/ReasonCode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/bi/common/api/ApiException$ApiError;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiException$ApiError;->reason:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiException$ApiError;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()Lcom/lewa/bi/common/api/ReasonCode;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiException$ApiError;->reasonCode:Lcom/lewa/bi/common/api/ReasonCode;

    return-object v0
.end method
