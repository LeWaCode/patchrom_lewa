.class Llewa/util/LocationUtil$AsyncQueryLocation;
.super Landroid/os/AsyncTask;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncQueryLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mCallback:Llewa/util/LocationUtil$LocationCallBack;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Llewa/util/LocationUtil$AsyncQueryLocation;->doInBackground([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 360
    aget-object v0, p1, v7

    check-cast v0, Landroid/content/Context;

    .line 361
    .local v0, context:Landroid/content/Context;
    aget-object v1, p1, v8

    check-cast v1, Ljava/lang/String;

    .line 362
    .local v1, number:Ljava/lang/String;
    aget-object v6, p1, v9

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 363
    .local v3, queryType:I
    const/4 v6, 0x3

    aget-object v6, p1, v6

    check-cast v6, Llewa/util/LocationUtil$LocationCallBack;

    iput-object v6, p0, Llewa/util/LocationUtil$AsyncQueryLocation;->mCallback:Llewa/util/LocationUtil$LocationCallBack;

    .line 365
    new-array v4, v9, [Ljava/lang/String;

    .line 367
    .local v4, result:[Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 368
    if-eq v3, v8, :cond_0

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    :cond_0
    move v6, v8

    :goto_0
    invoke-static {v0, v1, v6}, Llewa/util/LocationUtil;->getSpecialPhone(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, specialPhone:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 371
    aput-object v1, v4, v7

    .line 372
    aput-object v5, v4, v8

    .line 398
    .end local v5           #specialPhone:Ljava/lang/String;
    :goto_1
    return-object v4

    :cond_1
    move v6, v7

    .line 368
    goto :goto_0

    .line 375
    .restart local v5       #specialPhone:Ljava/lang/String;
    :cond_2
    if-eq v3, v9, :cond_3

    if-ne v3, v8, :cond_4

    .line 376
    :cond_3
    aput-object v1, v4, v7

    .line 377
    aput-object v10, v4, v8

    goto :goto_1

    .line 382
    .end local v5           #specialPhone:Ljava/lang/String;
    :cond_4
    #calls: Llewa/util/LocationUtil;->getPhoneLocationCached(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v1}, Llewa/util/LocationUtil;->access$100(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, phoneLocation:[Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 384
    aput-object v1, v4, v7

    .line 385
    aget-object v6, v2, v7

    aput-object v6, v4, v8

    goto :goto_1

    .line 389
    :cond_5
    #calls: Llewa/util/LocationUtil;->getPhoneLocationInternal(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;
    invoke-static {v0, v1, v8}, Llewa/util/LocationUtil;->access$200(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_6

    .line 391
    aput-object v1, v4, v7

    .line 392
    aget-object v6, v2, v7

    aput-object v6, v4, v8

    goto :goto_1

    .line 396
    :cond_6
    aput-object v1, v4, v7

    .line 397
    aput-object v10, v4, v8

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Llewa/util/LocationUtil$AsyncQueryLocation;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Llewa/util/LocationUtil$AsyncQueryLocation;->mCallback:Llewa/util/LocationUtil$LocationCallBack;

    invoke-interface {v0, p1}, Llewa/util/LocationUtil$LocationCallBack;->call([Ljava/lang/String;)V

    .line 406
    return-void
.end method
