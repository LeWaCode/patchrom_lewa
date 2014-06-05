.class public Lcom/lewa/cloud/fragment/ResultDialogFragment;
.super Landroid/app/DialogFragment;
.source "ResultDialogFragment.java"


# static fields
.field private static final EXTRA_CHANGE:Ljava/lang/String; = "change"

.field private static final EXTRA_DIR:Ljava/lang/String; = "dir"

.field private static final EXTRA_INFO:Ljava/lang/String; = "info"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"


# instance fields
.field keyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/lewa/cloud/fragment/ResultDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/fragment/ResultDialogFragment$2;-><init>(Lcom/lewa/cloud/fragment/ResultDialogFragment;)V

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ResultDialogFragment;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;III)V
    .locals 3
    .parameter "fm"
    .parameter "type"
    .parameter "dir"
    .parameter "changeNum"

    .prologue
    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "dir"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v2, "change"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    new-instance v1, Lcom/lewa/cloud/fragment/ResultDialogFragment;

    invoke-direct {v1}, Lcom/lewa/cloud/fragment/ResultDialogFragment;-><init>()V

    .line 45
    .local v1, dialog:Lcom/lewa/cloud/fragment/ResultDialogFragment;
    invoke-virtual {v1, v0}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->setCancelable(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 59
    sget-object v9, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v9}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v9

    iput-object v9, p0, Lcom/lewa/cloud/fragment/ResultDialogFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 60
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030010

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 61
    .local v6, layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 62
    .local v2, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0a0002

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 64
    .local v5, info:Landroid/widget/TextView;
    const/4 v7, 0x0

    .line 65
    .local v7, title:Ljava/lang/String;
    const/4 v4, 0x0

    .line 66
    .local v4, formatString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "type"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 67
    .local v8, type:I
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "dir"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 68
    .local v3, dir:I
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ResultDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "change"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, change:I
    packed-switch v8, :pswitch_data_0

    .line 93
    :goto_0
    :pswitch_0
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 96
    iget-object v9, p0, Lcom/lewa/cloud/fragment/ResultDialogFragment;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 97
    const v9, 0x104000a

    new-instance v10, Lcom/lewa/cloud/fragment/ResultDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/lewa/cloud/fragment/ResultDialogFragment$1;-><init>(Lcom/lewa/cloud/fragment/ResultDialogFragment;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 73
    :pswitch_1
    if-ne v3, v12, :cond_0

    .line 74
    const v9, 0x7f07004a

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 75
    const v9, 0x7f07004b

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 78
    :cond_0
    const v9, 0x7f07004e

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 79
    const v9, 0x7f07004f

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    if-ne v3, v12, :cond_1

    .line 84
    const v9, 0x7f070052

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 85
    const v9, 0x7f070053

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 88
    :cond_1
    const v9, 0x7f070056

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 89
    const v9, 0x7f070057

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
