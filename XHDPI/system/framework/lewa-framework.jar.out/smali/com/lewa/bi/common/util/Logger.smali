.class public Lcom/lewa/bi/common/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final DEBUG_ENABLE:Z


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "BILogger"

    iput-object v0, p0, Lcom/lewa/bi/common/util/Logger;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "BILogger"

    iput-object v0, p0, Lcom/lewa/bi/common/util/Logger;->TAG:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/lewa/bi/common/util/Logger;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lewa/bi/common/util/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "Logger for Android"

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lewa/bi/common/util/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lewa/bi/common/util/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lewa/bi/common/util/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method
