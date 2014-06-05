.class public Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
.super Landroid/app/Fragment;
.source "SmsSyncByContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$SelectAllTask;,
        Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContactsAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

.field private mConversationList:Landroid/widget/ListView;

.field private mConversationSelectedNum:I

.field public mNameFormat:Ljava/lang/String;

.field private mSmsSelectedNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I

    return v0
.end method

.method static synthetic access$002(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I

    return p1
.end method

.method static synthetic access$012(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I

    return v0
.end method

.method static synthetic access$020(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I

    return v0
.end method

.method static synthetic access$102(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I

    return p1
.end method

.method static synthetic access$108(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I

    return v0
.end method

.method static synthetic access$110(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I

    return v0
.end method


# virtual methods
.method public getSelectedNum()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 45
    const v1, 0x7f030009

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 46
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mNameFormat:Ljava/lang/String;

    .line 47
    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationList:Landroid/widget/ListView;

    .line 48
    new-instance v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;-><init>(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mContactsAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    .line 49
    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mContactsAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mContactsAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    iput v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mSmsSelectedNum:I

    .line 52
    iput v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mConversationSelectedNum:I

    .line 53
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mNameFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 63
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 68
    return-void
.end method

.method public selectAll(ZLandroid/view/View;)Z
    .locals 1
    .parameter "select"
    .parameter "target"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mContactsAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->selectAll(ZLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public switchRefresh()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mContactsAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->updateSelectNum()Z

    .line 99
    return-void
.end method
