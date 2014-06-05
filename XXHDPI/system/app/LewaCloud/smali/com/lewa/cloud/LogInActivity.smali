.class public Lcom/lewa/cloud/LogInActivity;
.super Landroid/app/Activity;
.source "LogInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final JUMP_STATE_IN:I = 0x3

.field private static final JUMP_STATE_OUT:I = 0x4

.field private static final JUMP_STATE_RETRY:I = 0x2

.field private static final JUMP_STATE_START:I = 0x0

.field private static final JUMP_STATE_TRY:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mJumpState:I

.field private mLogIn:Landroid/widget/Button;

.field private mLogInHelpInfo:Landroid/widget/TextView;

.field private mLogInState:I

.field private mPowerByInfo:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/lewa/cloud/LogInActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/LogInActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/lewa/cloud/LogInActivity;->mJumpState:I

    return-void
.end method

.method private dealwithNetworkDisconnection()V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/lewa/cloud/LogInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    return-void
.end method

.method private getLogInState()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getLogInState()I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/LogInActivity;->mLogInState:I

    return v0
.end method

.method private gotoPrim()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lewa/cloud/PrimCloudActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lewa/cloud/LogInActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/lewa/cloud/LogInActivity;->finish()V

    .line 162
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x2

    .line 140
    sget-object v0, Lcom/lewa/cloud/LogInActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOGIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v0, v0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mVerifyOk:I

    if-ne p2, v0, :cond_1

    .line 144
    iput v3, p0, Lcom/lewa/cloud/LogInActivity;->mLogInState:I

    .line 145
    const/4 v0, 0x3

    iput v0, p0, Lcom/lewa/cloud/LogInActivity;->mJumpState:I

    .line 146
    invoke-direct {p0}, Lcom/lewa/cloud/LogInActivity;->gotoPrim()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iput v3, p0, Lcom/lewa/cloud/LogInActivity;->mJumpState:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 91
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 92
    .local v0, button:Landroid/widget/Button;
    iget v1, p0, Lcom/lewa/cloud/LogInActivity;->mJumpState:I

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 94
    :pswitch_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/lewa/cloud/LogInActivity;->mJumpState:I

    .line 95
    iget-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1, p0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->startLoginActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 98
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/lewa/cloud/LogInActivity;->mJumpState:I

    .line 99
    iget-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1, p0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->startLoginActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1, p0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->startLoginActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-direct {p0}, Lcom/lewa/cloud/LogInActivity;->gotoPrim()V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/lewa/cloud/LogInActivity;->setContentView(I)V

    .line 65
    const v1, 0x7f0a000e

    invoke-virtual {p0, v1}, Lcom/lewa/cloud/LogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mLogInHelpInfo:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0a000f

    invoke-virtual {p0, v1}, Lcom/lewa/cloud/LogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mLogIn:Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mLogIn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/lewa/cloud/LogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mPowerByInfo:Landroid/widget/Button;

    .line 69
    sget-object v1, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v1}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/lewa/cloud/LogInActivity;->mJumpState:I

    .line 71
    invoke-virtual {p0}, Lcom/lewa/cloud/LogInActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 73
    sget-object v1, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v1, p0}, Lcom/lewa/cloud/CloudApp;->addActivity(Landroid/app/Activity;)V

    .line 74
    invoke-direct {p0}, Lcom/lewa/cloud/LogInActivity;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/lewa/cloud/LogInActivity;->getLogInState()I

    .line 76
    iget v1, p0, Lcom/lewa/cloud/LogInActivity;->mLogInState:I

    packed-switch v1, :pswitch_data_0

    .line 87
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 82
    :pswitch_1
    const/4 v1, 0x3

    iput v1, p0, Lcom/lewa/cloud/LogInActivity;->mJumpState:I

    .line 83
    invoke-direct {p0}, Lcom/lewa/cloud/LogInActivity;->gotoPrim()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const v4, 0x7f070003

    const/16 v3, 0x13

    const/4 v2, 0x0

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    iget v0, p0, Lcom/lewa/cloud/LogInActivity;->mLogInState:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/lewa/cloud/LogInActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/lewa/cloud/LogInActivity;->dealwithNetworkDisconnection()V

    .line 135
    :cond_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mLogInHelpInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getLogInHelpInfo()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mLogIn:Landroid/widget/Button;

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mPowerByInfo:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mPowerByInfo:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 122
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mPowerByInfo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getPowerBySource()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mLogInHelpInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getLogRetryHelpInfo()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mLogIn:Landroid/widget/Button;

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 127
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mPowerByInfo:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 128
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mPowerByInfo:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 129
    iget-object v0, p0, Lcom/lewa/cloud/LogInActivity;->mPowerByInfo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lewa/cloud/LogInActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getPowerBySource()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
