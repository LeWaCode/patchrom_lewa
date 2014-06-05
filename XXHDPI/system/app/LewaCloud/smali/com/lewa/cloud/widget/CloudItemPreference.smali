.class public Lcom/lewa/cloud/widget/CloudItemPreference;
.super Landroid/preference/Preference;
.source "CloudItemPreference.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndicator:Landroid/graphics/drawable/Drawable;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    const v0, 0x7f080003

    invoke-direct {p0, p1, p2, v0}, Lcom/lewa/cloud/widget/CloudItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget-object v1, Landroid/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, typeArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mTitle:Ljava/lang/CharSequence;

    .line 30
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mSummary:Ljava/lang/CharSequence;

    .line 31
    sget-object v1, Lcom/lewa/cloud/R$styleable;->CloudItemStyle:[I

    invoke-virtual {p1, p2, v1, v2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 38
    const/high16 v4, 0x7f0a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    const v4, 0x7f0a0001

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, title:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v4, 0x7f0a0006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, summary:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v4, 0x7f0a0028

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 45
    .local v1, indicator:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/lewa/cloud/widget/CloudItemPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 55
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/lewa/cloud/widget/CloudItemPreference;->mSummary:Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {p0}, Lcom/lewa/cloud/widget/CloudItemPreference;->notifyChanged()V

    .line 59
    :cond_2
    return-void
.end method
