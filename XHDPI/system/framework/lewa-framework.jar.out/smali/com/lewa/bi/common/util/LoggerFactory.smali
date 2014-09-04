.class public Lcom/lewa/bi/common/util/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static getLogger()Lcom/lewa/bi/common/util/Logger;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/lewa/bi/common/util/Logger;

    invoke-direct {v0}, Lcom/lewa/bi/common/util/Logger;-><init>()V

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Object;)Lcom/lewa/bi/common/util/Logger;
    .locals 2
    .parameter "obj"

    .prologue
    .line 14
    new-instance v0, Lcom/lewa/bi/common/util/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/bi/common/util/Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/lewa/bi/common/util/Logger;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    new-instance v0, Lcom/lewa/bi/common/util/Logger;

    invoke-direct {v0, p0}, Lcom/lewa/bi/common/util/Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
