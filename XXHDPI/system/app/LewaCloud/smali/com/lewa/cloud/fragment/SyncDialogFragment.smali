.class public Lcom/lewa/cloud/fragment/SyncDialogFragment;
.super Landroid/app/DialogFragment;
.source "SyncDialogFragment.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field public static mFragmentManager:Landroid/app/FragmentManager;


# instance fields
.field keyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mPercent:I

.field private mPercentFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/lewa/cloud/fragment/SyncDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/fragment/SyncDialogFragment$1;-><init>(Lcom/lewa/cloud/fragment/SyncDialogFragment;)V

    iput-object v0, p0, Lcom/lewa/cloud/fragment/SyncDialogFragment;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 3
    .parameter "fm"
    .parameter "title"
    .parameter "info"
    .parameter "type"
    .parameter "direction"
    .parameter "context"

    .prologue
    .line 37
    sput-object p0, Lcom/lewa/cloud/fragment/SyncDialogFragment;->mFragmentManager:Landroid/app/FragmentManager;

    .line 38
    sput-object p5, Lcom/lewa/cloud/fragment/SyncDialogFragment;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "info"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v2, "direction"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    new-instance v1, Lcom/lewa/cloud/fragment/SyncDialogFragment;

    invoke-direct {v1}, Lcom/lewa/cloud/fragment/SyncDialogFragment;-><init>()V

    .line 46
    .local v1, dialog:Lcom/lewa/cloud/fragment/SyncDialogFragment;
    invoke-virtual {v1, v0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->setCancelable(Z)V

    .line 50
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IIZZILandroid/content/Context;)V
    .locals 3
    .parameter "fm"
    .parameter "title"
    .parameter "info"
    .parameter "type"
    .parameter "direction"
    .parameter "byTime"
    .parameter "byAllConversation"
    .parameter "timeDuration"
    .parameter "context"

    .prologue
    .line 55
    sput-object p0, Lcom/lewa/cloud/fragment/SyncDialogFragment;->mFragmentManager:Landroid/app/FragmentManager;

    .line 56
    sput-object p8, Lcom/lewa/cloud/fragment/SyncDialogFragment;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "info"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v2, "direction"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v2, "by_time"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string v2, "sync_all"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string v2, "sync_duration"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    new-instance v1, Lcom/lewa/cloud/fragment/SyncDialogFragment;

    invoke-direct {v1}, Lcom/lewa/cloud/fragment/SyncDialogFragment;-><init>()V

    .line 67
    .local v1, dialog:Lcom/lewa/cloud/fragment/SyncDialogFragment;
    invoke-virtual {v1, v0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->setCancelable(Z)V

    .line 71
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f03000f

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 81
    .local v23, layout:Landroid/view/View;
    new-instance v21, Landroid/app/AlertDialog$Builder;

    sget-object v13, Lcom/lewa/cloud/fragment/SyncDialogFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v21, builder:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f0a002a

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    .local v3, percent:Landroid/widget/TextView;
    const v13, 0x7f0a0002

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 84
    .local v22, info:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "info"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v13, 0x7f0a002b

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 86
    .local v4, bar:Landroid/widget/ProgressBar;
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "title"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "type"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 88
    .local v6, type:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "direction"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 89
    .local v7, direction:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "by_time"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 90
    .local v8, by_time:Z
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "sync_all"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 91
    .local v9, sync_all:Z
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "sync_duration"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 92
    .local v10, sync_duration:I
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/fragment/SyncDialogFragment;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 102
    .local v5, dialog:Landroid/app/AlertDialog;
    packed-switch v6, :pswitch_data_0

    .line 116
    :goto_0
    return-object v5

    .line 104
    :pswitch_0
    sget-object v2, Lcom/lewa/cloud/fragment/SyncDialogFragment;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/lewa/cloud/ContactsSyncActivity;

    .line 105
    .local v2, contactsActivity:Lcom/lewa/cloud/ContactsSyncActivity;
    invoke-virtual/range {v2 .. v10}, Lcom/lewa/cloud/ContactsSyncActivity;->startSync(Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/app/AlertDialog;IIZZI)V

    goto :goto_0

    .line 108
    .end local v2           #contactsActivity:Lcom/lewa/cloud/ContactsSyncActivity;
    :pswitch_1
    sget-object v11, Lcom/lewa/cloud/fragment/SyncDialogFragment;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/lewa/cloud/SmsSyncDetailActivity;

    .local v11, smsActivity:Lcom/lewa/cloud/SmsSyncDetailActivity;
    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    .line 109
    invoke-virtual/range {v11 .. v19}, Lcom/lewa/cloud/SmsSyncDetailActivity;->startSync(Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/app/AlertDialog;IIZZI)V

    goto :goto_0

    .line 112
    .end local v11           #smsActivity:Lcom/lewa/cloud/SmsSyncDetailActivity;
    :pswitch_2
    sget-object v12, Lcom/lewa/cloud/fragment/SyncDialogFragment;->mContext:Landroid/content/Context;

    check-cast v12, Lcom/lewa/cloud/CallSyncActivity;

    .local v12, callLogActivity:Lcom/lewa/cloud/CallSyncActivity;
    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    .line 113
    invoke-virtual/range {v12 .. v20}, Lcom/lewa/cloud/CallSyncActivity;->startSync(Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/app/AlertDialog;IIZZI)V

    goto :goto_0

    .line 102
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
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
