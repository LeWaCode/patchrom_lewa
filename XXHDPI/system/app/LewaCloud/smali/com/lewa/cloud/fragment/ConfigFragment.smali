.class public Lcom/lewa/cloud/fragment/ConfigFragment;
.super Landroid/preference/PreferenceFragment;
.source "ConfigFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final MSG_UPDATE_ALL_SETTING:I = 0x0

.field private static final MSG_UPDATE_CONTACT_SYNC_SETTING:I = 0x1

.field private static final MSG_UPDATE_IMG_SYNC_SETTING:I = 0x2

.field private static final MSG_UPDATE_REMIND_SETTING:I = 0x3

.field private static final PREF_ITEM_CALL:Ljava/lang/String; = "pref_call"

.field private static final PREF_ITEM_CONTACT:Ljava/lang/String; = "pref_contact"

.field private static final PREF_ITEM_SMS:Ljava/lang/String; = "pref_sms"

.field private static final PREF_SET_CONTACT:Ljava/lang/String; = "pref_set_contact"

.field private static final PREF_SET_SYNC_PIC:Ljava/lang/String; = "pref_set_sync_pic"

.field private static final PREF_SYNC_REMIND:Ljava/lang/String; = "pref_sync_remind"

.field public static final TAG:Ljava/lang/String;

.field private static mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;


# instance fields
.field private mCall:Landroid/preference/Preference;

.field private mCallSyncTime:Ljava/lang/String;

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mContact:Landroid/preference/Preference;

.field private mContactSyncSwitch:Landroid/preference/SwitchPreference;

.field private mContactSyncTime:Ljava/lang/String;

.field private mImgSyncOnlyWifiSwitch:Landroid/preference/SwitchPreference;

.field private mNickName:Ljava/lang/String;

.field private mNickNameComponent:Landroid/widget/TextView;

.field private mRegularRemindSwitch:Landroid/preference/SwitchPreference;

.field private mSms:Landroid/preference/Preference;

.field private mSmsSyncTime:Ljava/lang/String;

.field private mSyncResultHandler:Landroid/os/Handler;

.field private mUserImg:Landroid/graphics/drawable/Drawable;

.field private mUserImgComponent:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/lewa/cloud/fragment/ConfigFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 321
    new-instance v0, Lcom/lewa/cloud/fragment/ConfigFragment$1;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/fragment/ConfigFragment$1;-><init>(Lcom/lewa/cloud/fragment/ConfigFragment;)V

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSyncResultHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageButton;Landroid/widget/TextView;)V
    .locals 1
    .parameter "userInfo"
    .parameter "nickName"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 321
    new-instance v0, Lcom/lewa/cloud/fragment/ConfigFragment$1;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/fragment/ConfigFragment$1;-><init>(Lcom/lewa/cloud/fragment/ConfigFragment;)V

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSyncResultHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mUserImgComponent:Landroid/widget/ImageButton;

    .line 68
    iput-object p2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mNickNameComponent:Landroid/widget/TextView;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/cloud/fragment/ConfigFragment;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/cloud/fragment/ConfigFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/lewa/cloud/fragment/ConfigFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->dealwithNetworkDisconnection()V

    return-void
.end method

.method private dealwithNetworkDisconnection()V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    return-void
.end method

.method private dealwithOutOfDate()V
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/lewa/cloud/LogInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->updatePrimeInfo()Z

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->refreshAccountImg()Z

    .line 196
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->refreshAccountNickname()Z

    .line 197
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->refreshContactSyncTimeInfo()Z

    .line 198
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->refreshSmsSyncTimeInfo()Z

    .line 199
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->refreshCallLogSyncTimeInfo()Z

    goto :goto_0
.end method

.method private refreshAccountImg()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getAccountImg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mUserImg:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mUserImg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mUserImgComponent:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mUserImgComponent:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mUserImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshAccountNickname()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getAccountNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mNickName:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mNickName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mNickNameComponent:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mNickNameComponent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshCallLogSyncTimeInfo()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 293
    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getCallLogSyncTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, time:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCallSyncTime:Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCall:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCallSyncTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    sget-object v2, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshCallLogSyncTimeInfo(not sync yet): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCallSyncTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return v1

    .line 305
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCallSyncTime:Ljava/lang/String;

    .line 307
    sget-object v1, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    const-string v3, "refreshCallLogSyncTimeInfo: null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 309
    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCallSyncTime:Ljava/lang/String;

    .line 314
    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCall:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCallSyncTime:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    sget-object v2, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshCallLogSyncTimeInfo(sync): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCallSyncTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshContactSyncTimeInfo()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getContactSyncTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, time:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 231
    :cond_0
    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncTime:Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContact:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    sget-object v2, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshContactSyncTimeInfo(not sync yet): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return v1

    .line 241
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncTime:Ljava/lang/String;

    .line 243
    sget-object v1, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    const-string v3, "refreshContactSyncTimeInfo: null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 245
    goto :goto_0

    .line 248
    :cond_2
    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncTime:Ljava/lang/String;

    .line 256
    :goto_1
    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContact:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncTime:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    sget-object v2, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshContactSyncTimeInfo(sync): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncTime:Ljava/lang/String;

    goto :goto_1
.end method

.method private refreshSmsSyncTimeInfo()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getSmsSyncTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, time:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSmsSyncTime:Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSms:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSmsSyncTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    sget-object v2, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSmsSyncTimeInfo(not sync yet): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSmsSyncTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return v1

    .line 276
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSmsSyncTime:Ljava/lang/String;

    .line 278
    sget-object v1, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    const-string v3, "refreshSmsSyncTimeInfo: null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 280
    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSmsSyncTime:Ljava/lang/String;

    .line 285
    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSms:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSmsSyncTime:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    sget-object v2, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSmsSyncTimeInfo(sync): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSmsSyncTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePrimeInfo()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updatePrimeInfo()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->addPreferencesFromResource(I)V

    .line 75
    const-string v0, "pref_contact"

    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContact:Landroid/preference/Preference;

    .line 76
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContact:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    const-string v0, "pref_sms"

    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSms:Landroid/preference/Preference;

    .line 78
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSms:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    const-string v0, "pref_call"

    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCall:Landroid/preference/Preference;

    .line 80
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCall:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    const-string v0, "pref_set_contact"

    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncSwitch:Landroid/preference/SwitchPreference;

    .line 82
    const-string v0, "pref_set_sync_pic"

    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mImgSyncOnlyWifiSwitch:Landroid/preference/SwitchPreference;

    .line 84
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mImgSyncOnlyWifiSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    sget-object v0, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v0}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 88
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSyncContactsAnytime:Z

    .line 89
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mImgSyncOnlyWifiSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSyncImgOnlyWifi:Z

    .line 91
    new-instance v0, Lcom/lewa/cloud/manager/SyncResultObsv;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSyncResultHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/lewa/cloud/manager/SyncResultObsv;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    .line 92
    iget-object v0, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v1, Lcom/lewa/cloud/fragment/ConfigFragment;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-virtual {v0, v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setSyncResultObsv(Lcom/lewa/cloud/manager/SyncResultObsv;)V

    .line 93
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->updatePrimeInfo()Z

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 116
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 111
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContact:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/lewa/cloud/ContactsSyncActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->startActivity(Landroid/content/Intent;)V

    .line 169
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mSms:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/lewa/cloud/SmsSyncActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCall:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/lewa/cloud/CallSyncActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lewa/cloud/fragment/ConfigFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, key:Ljava/lang/String;
    const-string v1, "pref_set_contact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mContactSyncSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSyncContactsAnytime:Z

    .line 123
    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget-boolean v1, v1, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSyncContactsAnytime:Z

    if-eqz v1, :cond_0

    .line 148
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 130
    :cond_1
    const-string v1, "pref_set_sync_pic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mImgSyncOnlyWifiSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSyncImgOnlyWifi:Z

    .line 132
    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget-boolean v1, v1, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSyncImgOnlyWifi:Z

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 105
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/ConfigFragment;->refresh()V

    .line 106
    return-void
.end method
