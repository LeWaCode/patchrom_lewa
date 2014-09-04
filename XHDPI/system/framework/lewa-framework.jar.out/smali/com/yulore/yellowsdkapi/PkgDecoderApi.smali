.class public interface abstract Lcom/yulore/yellowsdkapi/PkgDecoderApi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract checkPkgUpdate(Landroid/content/Context;Lcom/yulore/yellowsdkapi/entity/PkgInfo;)Lcom/yulore/yellowsdkapi/entity/PkgInfo;
.end method

.method public abstract decodeDatByTelNum(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;
.end method

.method public abstract decodeDataById(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ShopItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract decodeDataByKeyword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ShopItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract decodeLocationByTelNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/MobileLocation;
.end method
