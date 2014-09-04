.class public Llewa/accounts/OrderResult;
.super Ljava/lang/Object;
.source "OrderResult.java"


# static fields
.field public static final ORDER_CANCLE:I = 0x3

.field public static final ORDER_FAILED:I = 0x6

.field public static final ORDER_NET_FAILED:I = 0x2

.field public static final ORDER_NET_TIMEOUT:I = 0x1

.field public static final ORDER_NO_RECORD:I = 0x4

.field public static final ORDER_SIGN_FAILED:I = 0x7

.field public static final ORDER_SUCCESS:I = 0x5


# instance fields
.field public record:Llewa/accounts/OrderRecord;

.field public result_code:I

.field public result_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
