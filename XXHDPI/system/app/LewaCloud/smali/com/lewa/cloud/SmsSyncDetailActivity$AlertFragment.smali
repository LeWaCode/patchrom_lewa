.class public Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;
.super Landroid/app/DialogFragment;
.source "SmsSyncDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/SmsSyncDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertFragment"
.end annotation


# static fields
.field private static final EXTRA_BODY:Ljava/lang/String; = "body"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final TAG_ALERT:Ljava/lang/String; = "alert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fm"
    .parameter "title"
    .parameter "body"

    .prologue
    .line 576
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v2, "body"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v1, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;

    invoke-direct {v1}, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;-><init>()V

    .line 581
    .local v1, dialog:Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;
    invoke-virtual {v1, v0}, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;->setArguments(Landroid/os/Bundle;)V

    .line 582
    const-string v2, "alert"

    invoke-virtual {v1, p0, v2}, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 583
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, body:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment$1;

    invoke-direct {v5, p0}, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment$1;-><init>(Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 598
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
