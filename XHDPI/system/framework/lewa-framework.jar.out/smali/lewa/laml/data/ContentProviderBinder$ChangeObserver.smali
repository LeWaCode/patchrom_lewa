.class Llewa/laml/data/ContentProviderBinder$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Llewa/laml/data/ContentProviderBinder;)V
    .locals 1
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Llewa/laml/data/ContentProviderBinder$ChangeObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    .line 448
    #getter for: Llewa/laml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Llewa/laml/data/ContentProviderBinder;->access$200(Llewa/laml/data/ContentProviderBinder;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 449
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 444
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$ChangeObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    invoke-virtual {v0}, Llewa/laml/data/ContentProviderBinder;->onContentChanged()V

    .line 445
    return-void
.end method
