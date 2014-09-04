.class public Llewa/widget/dicon/ValFloat;
.super Ljava/lang/Object;
.source "ValFloat.java"


# instance fields
.field private mVal:F

.field private mValExp:Llewa/widget/dicon/ValExp;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    int-to-float v0, p1

    iput v0, p0, Llewa/widget/dicon/ValFloat;->mVal:F

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Llewa/widget/dicon/ValExp;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Llewa/widget/dicon/ValFloat;->mVal:F

    .line 17
    :goto_0
    return-void

    .line 15
    :cond_0
    new-instance v0, Llewa/widget/dicon/ValExp;

    invoke-direct {v0, p1}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/widget/dicon/ValFloat;->mValExp:Llewa/widget/dicon/ValExp;

    goto :goto_0
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Llewa/widget/dicon/ValFloat;->mValExp:Llewa/widget/dicon/ValExp;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Llewa/widget/dicon/ValFloat;->mValExp:Llewa/widget/dicon/ValExp;

    invoke-virtual {v0}, Llewa/widget/dicon/ValExp;->getInt()I

    move-result v0

    int-to-float v0, v0

    .line 23
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Llewa/widget/dicon/ValFloat;->mVal:F

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Llewa/widget/dicon/ValFloat;->mValExp:Llewa/widget/dicon/ValExp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/widget/dicon/ValFloat;->mValExp:Llewa/widget/dicon/ValExp;

    invoke-virtual {v0}, Llewa/widget/dicon/ValExp;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Llewa/widget/dicon/ValFloat;->mVal:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
