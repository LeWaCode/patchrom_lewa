.class Lcom/lewa/cloud/SmsSyncDetailActivity$1;
.super Ljava/lang/Object;
.source "SmsSyncDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/SmsSyncDetailActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/SmsSyncDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$1;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$1;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-virtual {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->finish()V

    .line 138
    return-void
.end method
