.class Llewa/accounts/PayManager$ResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/accounts/PayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultReceiver"
.end annotation


# static fields
.field private static final PAY_STATE:Ljava/lang/String; = "pay_state"


# instance fields
.field final synthetic this$0:Llewa/accounts/PayManager;


# direct methods
.method private constructor <init>(Llewa/accounts/PayManager;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Llewa/accounts/PayManager$ResultReceiver;->this$0:Llewa/accounts/PayManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/accounts/PayManager;Llewa/accounts/PayManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Llewa/accounts/PayManager$ResultReceiver;-><init>(Llewa/accounts/PayManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 387
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "pay_state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 388
    .local v1, payState:I
    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 389
    iget-object v2, p0, Llewa/accounts/PayManager$ResultReceiver;->this$0:Llewa/accounts/PayManager;

    #getter for: Llewa/accounts/PayManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Llewa/accounts/PayManager;->access$100(Llewa/accounts/PayManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 395
    :goto_0
    iget-object v2, p0, Llewa/accounts/PayManager$ResultReceiver;->this$0:Llewa/accounts/PayManager;

    iget-object v2, v2, Llewa/accounts/PayManager;->mPayListener:Llewa/accounts/PayManager$PayResultListener;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Llewa/accounts/PayManager$ResultReceiver;->this$0:Llewa/accounts/PayManager;

    iget-object v2, v2, Llewa/accounts/PayManager;->mPayListener:Llewa/accounts/PayManager$PayResultListener;

    iget-object v3, p0, Llewa/accounts/PayManager$ResultReceiver;->this$0:Llewa/accounts/PayManager;

    iget-object v3, v3, Llewa/accounts/PayManager;->mTokenCurrent:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Llewa/accounts/PayManager$PayResultListener;->onResult(Ljava/lang/String;I)V

    .line 398
    :cond_0
    return-void

    .line 390
    :cond_1
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 391
    iget-object v2, p0, Llewa/accounts/PayManager$ResultReceiver;->this$0:Llewa/accounts/PayManager;

    #getter for: Llewa/accounts/PayManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Llewa/accounts/PayManager;->access$100(Llewa/accounts/PayManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v2, p0, Llewa/accounts/PayManager$ResultReceiver;->this$0:Llewa/accounts/PayManager;

    #getter for: Llewa/accounts/PayManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Llewa/accounts/PayManager;->access$100(Llewa/accounts/PayManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u672a\u77e5\u60c5\u51b5"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
