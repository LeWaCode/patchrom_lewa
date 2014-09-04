.class Llewa/accounts/PayManager$QueryInfo;
.super Ljava/lang/Object;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/accounts/PayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryInfo"
.end annotation


# instance fields
.field callback:Llewa/accounts/PayManager$QueryOrderCallback;

.field listener:Llewa/accounts/PayManager$QueryResultListener;

.field task:Lcom/qihoopp/framework/HttpLoadThread;

.field final synthetic this$0:Llewa/accounts/PayManager;

.field tradeCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llewa/accounts/PayManager;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Llewa/accounts/PayManager$QueryInfo;->this$0:Llewa/accounts/PayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llewa/accounts/PayManager;Ljava/lang/String;Llewa/accounts/PayManager$QueryResultListener;Llewa/accounts/PayManager$QueryOrderCallback;Lcom/qihoopp/framework/HttpLoadThread;)V
    .locals 0
    .parameter
    .parameter "tradeCode"
    .parameter "listener"
    .parameter "callback"
    .parameter "task"

    .prologue
    .line 74
    iput-object p1, p0, Llewa/accounts/PayManager$QueryInfo;->this$0:Llewa/accounts/PayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Llewa/accounts/PayManager$QueryInfo;->tradeCode:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Llewa/accounts/PayManager$QueryInfo;->listener:Llewa/accounts/PayManager$QueryResultListener;

    .line 77
    iput-object p4, p0, Llewa/accounts/PayManager$QueryInfo;->callback:Llewa/accounts/PayManager$QueryOrderCallback;

    .line 78
    iput-object p5, p0, Llewa/accounts/PayManager$QueryInfo;->task:Lcom/qihoopp/framework/HttpLoadThread;

    .line 79
    return-void
.end method
