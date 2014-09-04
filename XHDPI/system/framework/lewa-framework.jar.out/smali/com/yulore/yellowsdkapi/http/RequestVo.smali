.class public Lcom/yulore/yellowsdkapi/http/RequestVo;
.super Ljava/lang/Object;


# instance fields
.field public callback:Lcom/yulore/yellowsdkapi/http/NetUtil$a;

.field public context:Landroid/content/Context;

.field public jsonParser:Lcom/yulore/yellowsdkapi/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yulore/yellowsdkapi/c/b",
            "<*>;"
        }
    .end annotation
.end field

.field public requestDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requestUrl:Ljava/lang/String;

.field public timeout:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
