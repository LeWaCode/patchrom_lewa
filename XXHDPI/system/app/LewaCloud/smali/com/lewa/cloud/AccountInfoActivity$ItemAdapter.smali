.class public Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/AccountInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lewa/cloud/AccountInfoActivity;


# direct methods
.method public constructor <init>(Lcom/lewa/cloud/AccountInfoActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 190
    iput-object p1, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->this$0:Lcom/lewa/cloud/AccountInfoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->mItems:Ljava/util/List;

    .line 191
    iput-object p2, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->mContext:Landroid/content/Context;

    .line 192
    new-instance v0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;

    const v1, 0x7f020013

    const v2, 0x7f070019

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;-><init>(Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;IILjava/lang/String;)V

    .line 193
    .local v0, item:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
    iget-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;

    .end local v0           #item:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
    const v1, 0x7f020017

    const v2, 0x7f07001a

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;-><init>(Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;IILjava/lang/String;)V

    .line 195
    .restart local v0       #item:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
    iget-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;

    .end local v0           #item:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
    const v1, 0x7f02000f

    const v2, 0x7f07001b

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;-><init>(Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;IILjava/lang/String;)V

    .line 197
    .restart local v0       #item:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
    iget-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 217
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 222
    iget-object v5, p0, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 223
    .local v3, layout:Landroid/widget/RelativeLayout;
    const/high16 v5, 0x7f0a

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 224
    .local v2, itemLogo:Landroid/widget/ImageView;
    const v5, 0x7f0a0001

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 225
    .local v4, title:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;

    .line 226
    .local v1, item:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
    iget v5, v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mPicId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget v5, v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mTitleId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v5, v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mInfo:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 229
    const v5, 0x7f0a0002

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 230
    .local v0, info:Landroid/widget/TextView;
    iget-object v5, v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mInfo:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .end local v0           #info:Landroid/widget/TextView;
    :cond_0
    return-object v3
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method
