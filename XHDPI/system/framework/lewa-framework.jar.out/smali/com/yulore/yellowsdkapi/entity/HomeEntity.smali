.class public Lcom/yulore/yellowsdkapi/entity/HomeEntity;
.super Ljava/lang/Object;


# instance fields
.field public catList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/Category;",
            ">;"
        }
    .end annotation
.end field

.field public districtList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/District;",
            ">;"
        }
    .end annotation
.end field

.field public localsvcsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field public serviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
