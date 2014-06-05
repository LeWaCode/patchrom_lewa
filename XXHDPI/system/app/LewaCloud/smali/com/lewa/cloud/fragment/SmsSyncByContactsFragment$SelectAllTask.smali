.class Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;
.super Landroid/os/AsyncTask;
.source "SmsSyncByContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

.field private mConversationSelectedNum:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAll:Z

.field private mSmsSelectedNum:I

.field private final mTarget:Landroid/view/View;

.field final synthetic this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;


# direct methods
.method public constructor <init>(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;Ljava/util/List;Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;ZLandroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter "adapter"
    .parameter "select"
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;",
            "Z",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;>;"
    const/4 v0, 0x0

    .line 242
    iput-object p1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 243
    invoke-virtual {p5, v0}, Landroid/view/View;->setClickable(Z)V

    .line 244
    iput-object p2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mList:Ljava/util/List;

    .line 245
    iput-object p3, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    .line 246
    iput-boolean p4, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mSelectAll:Z

    .line 247
    iput-object p5, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mTarget:Landroid/view/View;

    .line 248
    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mSmsSelectedNum:I

    .line 249
    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mConversationSelectedNum:I

    .line 250
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 263
    :cond_0
    return-object v4

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;

    .line 257
    .local v1, item:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    iget-boolean v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mSelectAll:Z

    iput-boolean v2, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mSelected:Z

    .line 258
    iget-boolean v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mSelectAll:Z

    if-eqz v2, :cond_2

    .line 259
    iget v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mSmsSelectedNum:I

    iget v3, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfoNum:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mSmsSelectedNum:I

    .line 260
    iget v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mConversationSelectedNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mConversationSelectedNum:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    iget v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mConversationSelectedNum:I

    iget v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mSmsSelectedNum:I

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->updateSelectNum(II)Z

    .line 269
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->notifyDataSetChanged()V

    .line 270
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->mTarget:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 271
    return-void
.end method
