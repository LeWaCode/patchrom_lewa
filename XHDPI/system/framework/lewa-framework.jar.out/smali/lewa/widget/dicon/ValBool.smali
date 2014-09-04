.class public Llewa/widget/dicon/ValBool;
.super Ljava/lang/Object;
.source "ValBool.java"


# instance fields
.field private mVal:Z

.field private mValExp:Llewa/widget/dicon/ValExp;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1}, Llewa/widget/dicon/ValExp;->isBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Llewa/widget/dicon/ValBool;->mVal:Z

    .line 13
    :goto_0
    return-void

    .line 11
    :cond_0
    new-instance v0, Llewa/widget/dicon/ValExp;

    invoke-direct {v0, p1}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/widget/dicon/ValBool;->mValExp:Llewa/widget/dicon/ValExp;

    goto :goto_0
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Llewa/widget/dicon/ValBool;->mValExp:Llewa/widget/dicon/ValExp;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Llewa/widget/dicon/ValBool;->mValExp:Llewa/widget/dicon/ValExp;

    invoke-virtual {v0}, Llewa/widget/dicon/ValExp;->getBool()Z

    move-result v0

    .line 19
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Llewa/widget/dicon/ValBool;->mVal:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Llewa/widget/dicon/ValBool;->mValExp:Llewa/widget/dicon/ValExp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/widget/dicon/ValBool;->mValExp:Llewa/widget/dicon/ValExp;

    invoke-virtual {v0}, Llewa/widget/dicon/ValExp;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Llewa/widget/dicon/ValBool;->mVal:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
