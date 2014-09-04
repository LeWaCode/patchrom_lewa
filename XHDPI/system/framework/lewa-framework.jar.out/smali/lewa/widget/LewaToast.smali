.class public Llewa/widget/LewaToast;
.super Ljava/lang/Object;
.source "LewaToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/widget/LewaToast$TN;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "Toast"

.field static final localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field final mTN:Llewa/widget/LewaToast$TN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Llewa/widget/LewaToast;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Llewa/widget/LewaToast$TN;

    invoke-direct {v0}, Llewa/widget/LewaToast$TN;-><init>()V

    iput-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    .line 100
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Llewa/widget/LewaToast$TN;->mY:I

    .line 102
    return-void
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Llewa/widget/LewaToast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Llewa/widget/LewaToast;->sService:Landroid/app/INotificationManager;

    .line 306
    :goto_0
    return-object v0

    .line 305
    :cond_0
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Llewa/widget/LewaToast;->sService:Landroid/app/INotificationManager;

    .line 306
    sget-object v0, Llewa/widget/LewaToast;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;II)Llewa/widget/LewaToast;
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Llewa/widget/LewaToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Llewa/widget/LewaToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Llewa/widget/LewaToast;
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 241
    new-instance v1, Llewa/widget/LewaToast;

    invoke-direct {v1, p0}, Llewa/widget/LewaToast;-><init>(Landroid/content/Context;)V

    .line 243
    .local v1, result:Llewa/widget/LewaToast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 245
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x909001f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 246
    .local v3, v:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 247
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iput-object v3, v1, Llewa/widget/LewaToast;->mNextView:Landroid/view/View;

    .line 250
    iput p2, v1, Llewa/widget/LewaToast;->mDuration:I

    .line 252
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    invoke-virtual {v0}, Llewa/widget/LewaToast$TN;->hide()V

    .line 132
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Llewa/widget/LewaToast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iget v0, v0, Llewa/widget/LewaToast$TN;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iget v0, v0, Llewa/widget/LewaToast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iget v0, v0, Llewa/widget/LewaToast$TN;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Llewa/widget/LewaToast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iget v0, v0, Llewa/widget/LewaToast$TN;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iget v0, v0, Llewa/widget/LewaToast$TN;->mY:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 156
    iput p1, p0, Llewa/widget/LewaToast;->mDuration:I

    .line 157
    return-void
.end method

.method public setGravity(III)V
    .locals 1
    .parameter "gravity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 202
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iput p1, v0, Llewa/widget/LewaToast$TN;->mGravity:I

    .line 203
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iput p2, v0, Llewa/widget/LewaToast$TN;->mX:I

    .line 204
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iput p3, v0, Llewa/widget/LewaToast$TN;->mY:I

    .line 205
    return-void
.end method

.method public setMargin(FF)V
    .locals 1
    .parameter "horizontalMargin"
    .parameter "verticalMargin"

    .prologue
    .line 178
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iput p1, v0, Llewa/widget/LewaToast$TN;->mHorizontalMargin:F

    .line 179
    iget-object v0, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    iput p2, v0, Llewa/widget/LewaToast$TN;->mVerticalMargin:F

    .line 180
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 276
    iget-object v0, p0, Llewa/widget/LewaToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Llewa/widget/LewaToast;->setText(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 284
    iget-object v1, p0, Llewa/widget/LewaToast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    iget-object v1, p0, Llewa/widget/LewaToast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 289
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 139
    iput-object p1, p0, Llewa/widget/LewaToast;->mNextView:Landroid/view/View;

    .line 140
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 108
    iget-object v3, p0, Llewa/widget/LewaToast;->mNextView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 109
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setView must have been called"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_0
    invoke-static {}, Llewa/widget/LewaToast;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 113
    .local v1, service:Landroid/app/INotificationManager;
    iget-object v3, p0, Llewa/widget/LewaToast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, pkg:Ljava/lang/String;
    iget-object v2, p0, Llewa/widget/LewaToast;->mTN:Llewa/widget/LewaToast$TN;

    .line 115
    .local v2, tn:Llewa/widget/LewaToast$TN;
    iget-object v3, p0, Llewa/widget/LewaToast;->mNextView:Landroid/view/View;

    iput-object v3, v2, Llewa/widget/LewaToast$TN;->mNextView:Landroid/view/View;

    .line 118
    :try_start_0
    iget v3, p0, Llewa/widget/LewaToast;->mDuration:I

    invoke-interface {v1, v0, v2, v3}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v3

    goto :goto_0
.end method
