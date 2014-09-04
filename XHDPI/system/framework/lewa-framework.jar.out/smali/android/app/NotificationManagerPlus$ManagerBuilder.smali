.class public Landroid/app/NotificationManagerPlus$ManagerBuilder;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagerBuilder"
.end annotation


# instance fields
.field private P:Landroid/app/NotificationManagerPlus$Parameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    new-instance v0, Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/NotificationManagerPlus$Parameters;-><init>(Landroid/app/NotificationManagerPlus$1;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    .line 475
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    .line 476
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 477
    return-void
.end method


# virtual methods
.method public create()Landroid/app/NotificationManagerPlus;
    .locals 3

    .prologue
    .line 584
    new-instance v0, Landroid/app/NotificationManagerPlus;

    iget-object v1, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/NotificationManagerPlus;-><init>(Landroid/app/NotificationManagerPlus$Parameters;Landroid/app/NotificationManagerPlus$1;)V

    return-object v0
.end method

.method public setCancelable(Z)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 539
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-boolean p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 540
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 515
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 516
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 517
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonHandled:Z

    .line 518
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 501
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 502
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 503
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonHandled:Z

    .line 504
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "listener"

    .prologue
    .line 528
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 529
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mCancelHandled:Z

    .line 530
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 548
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 549
    return-object p0
.end method

.method public setOnFirstShowListener(Landroid/app/NotificationManagerPlus$OnFirstShowListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 577
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnFirstShowListener:Landroid/app/NotificationManagerPlus$OnFirstShowListener;

    .line 578
    return-object p0
.end method

.method public setOnLastDismissListener(Landroid/app/NotificationManagerPlus$OnLastDismissListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 567
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnLastDismissListener:Landroid/app/NotificationManagerPlus$OnLastDismissListener;

    .line 568
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 558
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 559
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 487
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 488
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 489
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonHandled:Z

    .line 490
    return-object p0
.end method
