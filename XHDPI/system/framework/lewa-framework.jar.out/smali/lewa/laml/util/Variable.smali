.class public Llewa/laml/util/Variable;
.super Ljava/lang/Object;
.source "Variable.java"


# instance fields
.field private mObjectName:Ljava/lang/String;

.field private mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "var"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 15
    .local v0, dot:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 16
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/laml/util/Variable;->mObjectName:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Llewa/laml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 22
    :goto_0
    iget-object v1, p0, Llewa/laml/util/Variable;->mPropertyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "Variable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid variable name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void

    .line 19
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/util/Variable;->mObjectName:Ljava/lang/String;

    .line 20
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/util/Variable;->mPropertyName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Llewa/laml/util/Variable;->mObjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Llewa/laml/util/Variable;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method
