.class public Lcom/yulore/yellowsdkapi/entity/CallLogItem;
.super Ljava/lang/Object;


# instance fields
.field private number:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/yulore/yellowsdkapi/entity/CallLogItem;

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->number:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->number:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->number:Ljava/lang/String;

    iget-object v3, p1, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->number:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->number:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->type:I

    return-void
.end method
