.class public Llewa/widget/dicon/ValString;
.super Ljava/lang/Object;
.source "ValString.java"


# instance fields
.field private mVal:Ljava/lang/String;

.field private mValExp:Llewa/widget/dicon/ValExp;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1}, Llewa/widget/dicon/ValExp;->isFixString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iput-object p1, p0, Llewa/widget/dicon/ValString;->mVal:Ljava/lang/String;

    .line 13
    :goto_0
    return-void

    .line 11
    :cond_0
    new-instance v0, Llewa/widget/dicon/ValExp;

    invoke-direct {v0, p1}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/widget/dicon/ValString;->mValExp:Llewa/widget/dicon/ValExp;

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Llewa/widget/dicon/ValString;->mValExp:Llewa/widget/dicon/ValExp;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Llewa/widget/dicon/ValString;->mValExp:Llewa/widget/dicon/ValExp;

    invoke-virtual {v0}, Llewa/widget/dicon/ValExp;->getString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/widget/dicon/ValString;->mVal:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Llewa/widget/dicon/ValString;->mValExp:Llewa/widget/dicon/ValExp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/widget/dicon/ValString;->mValExp:Llewa/widget/dicon/ValExp;

    invoke-virtual {v0}, Llewa/widget/dicon/ValExp;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/widget/dicon/ValString;->mVal:Ljava/lang/String;

    goto :goto_0
.end method
