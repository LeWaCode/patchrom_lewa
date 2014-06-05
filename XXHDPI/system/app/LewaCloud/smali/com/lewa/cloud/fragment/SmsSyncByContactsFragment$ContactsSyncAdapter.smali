.class public Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmsSyncByContactsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactsSyncAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;


# direct methods
.method public constructor <init>(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    .line 115
    iput-object p2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 173
    iget-object v6, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030011

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 174
    .local v2, layout:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 175
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    :goto_0
    return-object v2

    .line 178
    :cond_0
    const v6, 0x7f0a002e

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 179
    .local v4, name:Landroid/widget/TextView;
    const v6, 0x7f0a002f

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 180
    .local v3, message:Landroid/widget/TextView;
    const v6, 0x7f0a001d

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 181
    .local v5, time:Landroid/widget/TextView;
    const v6, 0x7f0a002d

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 182
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;

    .line 183
    .local v1, item:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    iget-object v6, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    iget-object v6, v6, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mNameFormat:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfoNum:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v6, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfo:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v6, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-boolean v6, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mSelected:Z

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 195
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 196
    .local v0, box:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;

    .line 197
    .local v1, item:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mSelected:Z

    .line 198
    iget-boolean v2, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mSelected:Z

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    iget v3, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfoNum:I

    invoke-static {v2, v3}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$012(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I

    .line 200
    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-static {v2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$108(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    .line 206
    :goto_0
    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-virtual {v2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/lewa/cloud/SmsSyncDetailActivity;

    iget-object v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #getter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I
    invoke-static {v3}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$100(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #getter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I
    invoke-static {v4}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$000(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lewa/cloud/SmsSyncDetailActivity;->refreshSelectNum(II)V

    .line 207
    return-void

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    iget v3, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfoNum:I

    invoke-static {v2, v3}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$020(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I

    .line 204
    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-static {v2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$110(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 214
    .local v2, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;

    .line 215
    .local v1, item:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    const v3, 0x7f0a002d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 216
    .local v0, box:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 222
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mSelected:Z

    .line 223
    iget-boolean v3, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mSelected:Z

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    iget v4, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfoNum:I

    invoke-static {v3, v4}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$012(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I

    .line 225
    iget-object v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-static {v3}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$108(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    .line 231
    :goto_1
    iget-object v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-virtual {v3}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/lewa/cloud/SmsSyncDetailActivity;

    iget-object v4, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #getter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I
    invoke-static {v4}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$100(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #getter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I
    invoke-static {v5}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$000(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/lewa/cloud/SmsSyncDetailActivity;->refreshSelectNum(II)V

    .line 232
    return-void

    .line 220
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    iget v4, v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfoNum:I

    invoke-static {v3, v4}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$020(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I

    .line 229
    iget-object v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-static {v3}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$110(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    goto :goto_1
.end method

.method public selectAll(ZLandroid/view/View;)Z
    .locals 7
    .parameter "select"
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 125
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->TAG:Ljava/lang/String;

    const-string v1, "selectAll: mList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_0
    new-instance v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;-><init>(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;Ljava/util/List;Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;ZLandroid/view/View;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;>;"
    const/4 v1, 0x0

    .line 119
    iput-object p1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->mList:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #setter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I
    invoke-static {v0, v1}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$002(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I

    .line 121
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #setter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I
    invoke-static {v0, v1}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$102(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I

    .line 122
    return-void
.end method

.method public updateSelectNum()Z
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-virtual {v0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lewa/cloud/SmsSyncDetailActivity;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #getter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I
    invoke-static {v1}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$100(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #getter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I
    invoke-static {v2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$000(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->refreshSelectNum(II)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public updateSelectNum(II)Z
    .locals 3
    .parameter "conversation"
    .parameter "sms"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #setter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I
    invoke-static {v0, p1}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$102(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I

    .line 135
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #setter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I
    invoke-static {v0, p2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$002(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I

    .line 136
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-virtual {v0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lewa/cloud/SmsSyncDetailActivity;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #getter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I
    invoke-static {v1}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$100(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->this$0:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    #getter for: Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I
    invoke-static {v2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->access$000(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->refreshSelectNum(II)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method
