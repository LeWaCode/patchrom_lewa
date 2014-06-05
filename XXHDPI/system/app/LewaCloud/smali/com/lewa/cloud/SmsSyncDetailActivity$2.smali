.class Lcom/lewa/cloud/SmsSyncDetailActivity$2;
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
    .line 148
    iput-object p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 152
    sget-object v4, Lcom/lewa/cloud/SmsSyncDetailActivity;->TAG:Ljava/lang/String;

    const-string v5, "select all"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;
    invoke-static {v4}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$000(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getFragments()[Landroid/app/Fragment;

    move-result-object v1

    .line 155
    .local v1, fragments:[Landroid/app/Fragment;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 156
    aget-object v4, v1, v2

    instance-of v4, v4, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    if-eqz v4, :cond_0

    .line 158
    aget-object v0, v1, v2

    check-cast v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    .line 159
    .local v0, fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mAllIsSelected:Z
    invoke-static {v4}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$100(Lcom/lewa/cloud/SmsSyncDetailActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->selectAll(ZLandroid/view/View;)Z

    move-result v3

    .line 161
    .local v3, ret:Z
    if-eqz v3, :cond_0

    .line 162
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mAllIsSelected:Z
    invoke-static {v4, v7}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$102(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    .line 163
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mByAllConversation:Z
    invoke-static {v4, v8}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$302(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    .line 164
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-virtual {v5}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x9080001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    .end local v0           #fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    .end local v3           #ret:Z
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .restart local v0       #fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    :cond_1
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->selectAll(ZLandroid/view/View;)Z

    move-result v3

    .line 169
    .restart local v3       #ret:Z
    if-eqz v3, :cond_0

    .line 170
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mAllIsSelected:Z
    invoke-static {v4, v8}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$102(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    .line 171
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mByAllConversation:Z
    invoke-static {v4, v7}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$302(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    .line 172
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$2;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-virtual {v5}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x9080002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 178
    .end local v0           #fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    .end local v3           #ret:Z
    :cond_2
    return-void
.end method
