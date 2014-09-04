.class public interface abstract Lcom/yulore/yellowsdkapi/YellowPageApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/yellowsdkapi/YellowPageApi$ErrorCorrection;
    }
.end annotation


# virtual methods
.method public abstract getCorrectionWebUrl(Ljava/lang/String;Lcom/yulore/yellowsdkapi/YellowPageApi$ErrorCorrection;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDetailWebUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract markTelNumber(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract queryAddressByGeo(DD)Lcom/yulore/yellowsdkapi/entity/Address;
.end method

.method public abstract queryCityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/City;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryHomeList(I)Lcom/yulore/yellowsdkapi/entity/HomeEntity;
.end method

.method public abstract queryMerchantsById(ILjava/lang/String;IIZDDLcom/yulore/yellowsdkapi/http/NetUtil$a;)Lcom/yulore/yellowsdkapi/entity/ListEntity;
.end method

.method public abstract queryMerchantsByKeyword(ILjava/lang/String;IIIZDD)Lcom/yulore/yellowsdkapi/entity/SearchEntity;
.end method

.method public abstract queryNumberInfo(Lcom/yulore/yellowsdkapi/entity/CallLogItem;)Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;
.end method

.method public abstract queryNumberInfoBatch(Ljava/util/List;)Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/CallLogItem;",
            ">;)",
            "Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;"
        }
    .end annotation
.end method
