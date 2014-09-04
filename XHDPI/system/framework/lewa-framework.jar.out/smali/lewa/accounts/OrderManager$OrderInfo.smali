.class Llewa/accounts/OrderManager$OrderInfo;
.super Ljava/lang/Object;
.source "OrderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/accounts/OrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderInfo"
.end annotation


# instance fields
.field callback:Llewa/accounts/OrderManager$OrderCallback;

.field listener:Llewa/accounts/OrderManager$OrderResultListener;

.field order:Llewa/accounts/Order;

.field task:Lcom/qihoopp/framework/HttpLoadThread;

.field final synthetic this$0:Llewa/accounts/OrderManager;


# direct methods
.method public constructor <init>(Llewa/accounts/OrderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Llewa/accounts/OrderManager$OrderInfo;->this$0:Llewa/accounts/OrderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Llewa/accounts/OrderManager;Llewa/accounts/Order;Llewa/accounts/OrderManager$OrderResultListener;Lcom/qihoopp/framework/HttpLoadThread;Llewa/accounts/OrderManager$OrderCallback;)V
    .locals 0
    .parameter
    .parameter "order"
    .parameter "listener"
    .parameter "task"
    .parameter "callback"

    .prologue
    .line 38
    iput-object p1, p0, Llewa/accounts/OrderManager$OrderInfo;->this$0:Llewa/accounts/OrderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Llewa/accounts/OrderManager$OrderInfo;->order:Llewa/accounts/Order;

    .line 40
    iput-object p3, p0, Llewa/accounts/OrderManager$OrderInfo;->listener:Llewa/accounts/OrderManager$OrderResultListener;

    .line 41
    iput-object p4, p0, Llewa/accounts/OrderManager$OrderInfo;->task:Lcom/qihoopp/framework/HttpLoadThread;

    .line 42
    iput-object p5, p0, Llewa/accounts/OrderManager$OrderInfo;->callback:Llewa/accounts/OrderManager$OrderCallback;

    .line 43
    return-void
.end method
