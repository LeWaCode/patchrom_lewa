.class public Llewa/lockscreen/view/Variable;
.super Ljava/lang/Object;
.source "Variable.java"


# instance fields
.field private mObjectName:Ljava/lang/String;

.field private mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "propertyName"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 14
    .local v0, pos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/lockscreen/view/Variable;->mObjectName:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Llewa/lockscreen/view/Variable;->mPropertyName:Ljava/lang/String;

    .line 21
    :goto_0
    iget-object v1, p0, Llewa/lockscreen/view/Variable;->mPropertyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    :goto_1
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/lockscreen/view/Variable;->mObjectName:Ljava/lang/String;

    .line 19
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/lockscreen/view/Variable;->mPropertyName:Ljava/lang/String;

    goto :goto_0

    .line 24
    :cond_1
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

    goto :goto_1
.end method


# virtual methods
.method public getObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llewa/lockscreen/view/Variable;->mObjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llewa/lockscreen/view/Variable;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method
