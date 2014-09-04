.class public Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;
.super Ljava/lang/Object;


# instance fields
.field public recognitionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;",
            ">;"
        }
    .end annotation
.end field

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;->status:I

    return-void
.end method
