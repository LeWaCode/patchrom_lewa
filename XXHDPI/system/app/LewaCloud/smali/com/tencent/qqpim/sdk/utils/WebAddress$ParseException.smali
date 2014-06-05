.class public Lcom/tencent/qqpim/sdk/utils/WebAddress$ParseException;
.super Ljava/lang/RuntimeException;


# instance fields
.field public response:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/qqpim/sdk/utils/WebAddress;


# direct methods
.method constructor <init>(Lcom/tencent/qqpim/sdk/utils/WebAddress;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress$ParseException;->this$0:Lcom/tencent/qqpim/sdk/utils/WebAddress;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress$ParseException;->response:Ljava/lang/String;

    return-void
.end method
