.class public Lcom/lewa/cloud/fragment/ContactResultDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactResultDialogFragment.java"


# static fields
.field private static final EXTRA_INFO:Ljava/lang/String; = "info"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"


# instance fields
.field keyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mFormatString:Ljava/lang/String;

.field private mLocalAdd:I

.field private mLocalDelete:I

.field private mLocalModify:I

.field private mRemoteAdd:I

.field private mRemoteDelete:I

.field private mRemoteModify:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment$2;-><init>(Lcom/lewa/cloud/fragment/ContactResultDialogFragment;)V

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fm"
    .parameter "title"
    .parameter "info"

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "info"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;

    invoke-direct {v1}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;-><init>()V

    .line 47
    .local v1, dialog:Lcom/lewa/cloud/fragment/ContactResultDialogFragment;
    invoke-virtual {v1, v0}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->setCancelable(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 61
    sget-object v7, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v7}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v7

    iput-object v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 62
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030007

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 64
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f070047

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mFormatString:Ljava/lang/String;

    .line 66
    const v7, 0x7f0a0019

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 67
    .local v4, localInfo:Landroid/widget/TextView;
    const v7, 0x7f0a001a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 68
    .local v6, remoteInfo:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v7}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getLocalSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    move-result-object v3

    .line 69
    .local v3, local:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;
    iget v7, v3, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    iput v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mLocalAdd:I

    .line 70
    iget v7, v3, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mDel:I

    iput v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mLocalDelete:I

    .line 71
    iget v7, v3, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mModify:I

    iput v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mLocalModify:I

    .line 72
    iget-object v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mFormatString:Ljava/lang/String;

    new-array v8, v13, [Ljava/lang/Object;

    iget v9, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mLocalAdd:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    iget v9, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mLocalDelete:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    iget v9, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mLocalModify:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v7}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getRemoteSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    move-result-object v5

    .line 74
    .local v5, remote:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;
    iget v7, v5, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    iput v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mRemoteAdd:I

    .line 75
    iget v7, v5, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mDel:I

    iput v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mRemoteDelete:I

    .line 76
    iget v7, v5, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mModify:I

    iput v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mRemoteModify:I

    .line 77
    iget-object v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mFormatString:Ljava/lang/String;

    new-array v8, v13, [Ljava/lang/Object;

    iget v9, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mRemoteAdd:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    iget v9, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mRemoteDelete:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    iget v9, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->mRemoteModify:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 80
    iget-object v7, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 81
    const v7, 0x104000a

    new-instance v8, Lcom/lewa/cloud/fragment/ContactResultDialogFragment$1;

    invoke-direct {v8, p0}, Lcom/lewa/cloud/fragment/ContactResultDialogFragment$1;-><init>(Lcom/lewa/cloud/fragment/ContactResultDialogFragment;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
