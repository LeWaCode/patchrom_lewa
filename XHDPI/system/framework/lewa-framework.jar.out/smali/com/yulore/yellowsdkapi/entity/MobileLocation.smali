.class public Lcom/yulore/yellowsdkapi/entity/MobileLocation;
.super Ljava/lang/Object;


# instance fields
.field private cityId:I

.field private mobileOperatorName:Ljava/lang/String;

.field private mobileOperatorType:I

.field private provinceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCityId()I
    .locals 1

    iget v0, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->cityId:I

    return v0
.end method

.method public getMobileOperatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->mobileOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileOperatorType()I
    .locals 1

    iget v0, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->mobileOperatorType:I

    return v0
.end method

.method public getProvinceId()I
    .locals 1

    iget v0, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->provinceId:I

    return v0
.end method

.method public setCityId(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->cityId:I

    return-void
.end method

.method public setMobileOperatorType(I)V
    .locals 1

    iput p1, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->mobileOperatorType:I

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->mobileOperatorName:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->mobileOperatorName:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->mobileOperatorName:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const-string v0, "\u8717\u725b\u79fb\u52a8"

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->mobileOperatorName:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method public setProvinceId(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->provinceId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileLocation [provinceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->provinceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->cityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mobileOperatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->mobileOperatorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mobileOperatorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/MobileLocation;->mobileOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
