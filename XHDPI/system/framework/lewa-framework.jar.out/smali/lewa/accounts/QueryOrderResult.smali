.class public Llewa/accounts/QueryOrderResult;
.super Ljava/lang/Object;
.source "QueryOrderResult.java"


# static fields
.field public static final QUERY_CANCLE:I = 0x3

.field public static final QUERY_FAILED:I = 0x6

.field public static final QUERY_NET_FAILED:I = 0x2

.field public static final QUERY_NET_TIMEOUT:I = 0x1

.field public static final QUERY_NO_RECORD:I = 0x4

.field public static final QUERY_SIGN_FAILED:I = 0x7

.field public static final QUERY_SUCCESS:I = 0x5


# instance fields
.field public record:Llewa/accounts/PayRecord;

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
