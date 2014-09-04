.class public Lcom/yulore/yellowsdkapi/entity/Address;
.super Ljava/lang/Object;


# instance fields
.field private address:Ljava/lang/String;

.field private businessAoi:[Ljava/lang/String;

.field private cityId:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private responseJson:Ljava/lang/String;

.field private streetName:Ljava/lang/String;

.field private streetNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/Address;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessAoi()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/Address;->businessAoi:[Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/Address;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/Address;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/Address;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/Address;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/Address;->streetName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/Address;->streetNum:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->address:Ljava/lang/String;

    return-void
.end method

.method public setBusinessAoi([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->businessAoi:[Ljava/lang/String;

    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->cityId:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->district:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->province:Ljava/lang/String;

    return-void
.end method

.method public setResponseJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->responseJson:Ljava/lang/String;

    return-void
.end method

.method public setStreetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->streetName:Ljava/lang/String;

    return-void
.end method

.method public setStreetNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->streetNum:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/entity/Address;->responseJson:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address [cityName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->cityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", businessAoi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->businessAoi:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->streetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streetNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/entity/Address;->streetNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
