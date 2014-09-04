.class public Llewa/accounts/Order;
.super Ljava/lang/Object;
.source "Order.java"


# instance fields
.field public busAmount:F

.field public cardAmount:F

.field public mMerTradeCode:Ljava/lang/String;

.field public mProductName:Ljava/lang/String;

.field public payAmount:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Llewa/accounts/Order;->cardAmount:F

    .line 7
    iput v0, p0, Llewa/accounts/Order;->payAmount:F

    .line 8
    iput v0, p0, Llewa/accounts/Order;->busAmount:F

    return-void
.end method
