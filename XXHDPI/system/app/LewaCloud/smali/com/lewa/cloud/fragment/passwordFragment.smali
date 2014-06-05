.class public Lcom/lewa/cloud/fragment/passwordFragment;
.super Landroid/app/DialogFragment;
.source "passwordFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mPimSyncLatch:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field keyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/lewa/cloud/fragment/passwordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/fragment/passwordFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 98
    new-instance v0, Lcom/lewa/cloud/fragment/passwordFragment$4;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/fragment/passwordFragment$4;-><init>(Lcom/lewa/cloud/fragment/passwordFragment;)V

    iput-object v0, p0, Lcom/lewa/cloud/fragment/passwordFragment;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lewa/cloud/fragment/passwordFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lewa/cloud/fragment/passwordFragment;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lewa/cloud/fragment/passwordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lewa/cloud/fragment/passwordFragment;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lewa/cloud/fragment/passwordFragment;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lewa/cloud/fragment/passwordFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lewa/cloud/fragment/passwordFragment;->mPimSyncLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .parameter "fm"
    .parameter "latch"

    .prologue
    .line 40
    sput-object p1, Lcom/lewa/cloud/fragment/passwordFragment;->mPimSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 41
    new-instance v0, Lcom/lewa/cloud/fragment/passwordFragment;

    invoke-direct {v0}, Lcom/lewa/cloud/fragment/passwordFragment;-><init>()V

    .line 42
    .local v0, dialog:Lcom/lewa/cloud/fragment/passwordFragment;
    const-string v1, "password"

    invoke-virtual {v0, p0, v1}, Lcom/lewa/cloud/fragment/passwordFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lewa/cloud/fragment/passwordFragment;->setCancelable(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 54
    sget-object v5, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v5}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/cloud/fragment/passwordFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 55
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/passwordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/passwordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 57
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a0027

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 59
    .local v3, password:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 62
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 63
    const v5, 0x7f070062

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 64
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 65
    new-instance v5, Lcom/lewa/cloud/fragment/passwordFragment$1;

    invoke-direct {v5, p0}, Lcom/lewa/cloud/fragment/passwordFragment$1;-><init>(Lcom/lewa/cloud/fragment/passwordFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    const v5, 0x104000a

    new-instance v6, Lcom/lewa/cloud/fragment/passwordFragment$2;

    invoke-direct {v6, p0}, Lcom/lewa/cloud/fragment/passwordFragment$2;-><init>(Lcom/lewa/cloud/fragment/passwordFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    const/high16 v5, 0x104

    new-instance v6, Lcom/lewa/cloud/fragment/passwordFragment$3;

    invoke-direct {v6, p0}, Lcom/lewa/cloud/fragment/passwordFragment$3;-><init>(Lcom/lewa/cloud/fragment/passwordFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
